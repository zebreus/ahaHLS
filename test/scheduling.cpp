#define CATCH_CONFIG_MAIN

#include "catch.hpp"

#include "algorithm.h"

#include "scheduling.h"
#include "verilog_backend.h"

#include <fstream>

#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"
#include <llvm/Support/TargetSelect.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Bitcode/BitcodeReader.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Support/SourceMgr.h>

#include "llvm/ADT/STLExtras.h"
#include "llvm/Option/OptTable.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/Signals.h"
#include "llvm/Support/TargetSelect.h"

#include <iostream>

using namespace dbhc;
using namespace llvm;
using namespace std;

LLVMContext context;

namespace DHLS {

  bool runCmd(const std::string& cmd) {
    cout << "Running command: " << cmd << endl;
    bool res = system(cmd.c_str());
    return res == 0;
  }

  bool runIVerilogTB(const std::string& moduleName) {
    string mainName = moduleName + "_tb.v";
    string modFile = moduleName + ".v";

    string genCmd = "iverilog -g2005-sv -o " + moduleName + " " + mainName + " " + modFile + " RAM.v RAM2.v delay.v builtins.v";
    bool compiled = runCmd(genCmd);

    if (!compiled) {
      return false;
    }

    string resFile = moduleName + "_tb_result.txt";
    string exeCmd = "./" + moduleName + " > " + resFile;
    bool ran = runCmd(exeCmd);

    assert(ran);

    ifstream res(resFile);
    std::string str((std::istreambuf_iterator<char>(res)),
                    std::istreambuf_iterator<char>());

    cout << "str = " << str << endl;
    
    runCmd("rm -f " + resFile);

    reverse(begin(str), end(str));
    string lastLine;

    bool secondLine = false;
    for (int i = 1; i < str.size(); i++) {
      if (str[i] == '\n') {
        break;
      }

      lastLine += str[i];
    }

    reverse(begin(lastLine), end(lastLine));

    cout << "Lastline = " << lastLine << endl;
    return lastLine == "Passed";
  }
  
  void createLLFile(const std::string& moduleName) {
    system(("clang -O1 -c -S -emit-llvm " + moduleName + ".c -o " + moduleName + ".ll").c_str());
  }

  TEST_CASE("Schedule a single store operation") {
    createLLFile("./test/ll_files/single_store");    

    SMDiagnostic Err;
    LLVMContext Context;

    string modFile = "./test/ll_files/single_store.ll";
    std::unique_ptr<Module> Mod(parseIRFile(modFile, Err, Context));
    if (!Mod) {
      outs() << "Error: No mod\n";
      assert(false);
    }

    HardwareConstraints hcs;
    hcs.setLatency(STORE_OP, 3);

    Function* f = Mod->getFunction("single_store");
    Schedule s = scheduleFunction(f, hcs);

    REQUIRE(s.clockTicksToFinish() == 3);

    auto& retInstr = f->getBasicBlockList().back().back();
    //cout << "Retinstr = " << retInstr << endl;
    REQUIRE(s.startTime(&retInstr) == 3);

    STG graph = buildSTG(s, f);

    cout << "STG Is" << endl;
    graph.print(cout);

    REQUIRE(graph.numControlStates() == 4);

    map<string, int> layout = {{"a", 0}};
    emitVerilog(f, graph, layout);

    REQUIRE(runIVerilogTB("single_store"));
  }

  TEST_CASE("Adding two numbers and storing them back") {
    createLLFile("./test/ll_files/plus");    

    SMDiagnostic Err;
    LLVMContext Context;

    string modFile = "./test/ll_files/plus.ll";
    std::unique_ptr<Module> Mod(parseIRFile(modFile, Err, Context));
    if (!Mod) {
      outs() << "Error: No mod\n";
      assert(false);
    }

    HardwareConstraints hcs;
    hcs.setLatency(STORE_OP, 3);
    hcs.setLatency(LOAD_OP, 1);
    hcs.setLatency(ADD_OP, 0);

    Function* f = Mod->getFunction("plus");
    Schedule s = scheduleFunction(f, hcs);

    REQUIRE(s.clockTicksToFinish() == 4);

    auto& retInstr = f->getBasicBlockList().back().back();

    STG graph = buildSTG(s, f);

    cout << "STG Is" << endl;
    graph.print(cout);

    REQUIRE(graph.numControlStates() == 5);

    map<string, int> layout = {{"a", 0}, {"b", 3}, {"c", 4}};
    emitVerilog(f, graph, layout);

    REQUIRE(runIVerilogTB("plus"));
  }

  // Q: What test cases do I need?
  // A: Test case with a variable used in states after it is produced.
  //    Test case that uses multiple, different comparator operations
  //    Test case that uses 16 (or other not 32 bit) width
  TEST_CASE("A simple if") {
    createLLFile("./test/ll_files/if_else");    

    SMDiagnostic Err;
    LLVMContext Context;

    string modFile = "./test/ll_files/if_else.ll";
    std::unique_ptr<Module> Mod(parseIRFile(modFile, Err, Context));
    if (!Mod) {
      outs() << "Error: No mod\n";
      assert(false);
    }

    HardwareConstraints hcs;
    hcs.setLatency(STORE_OP, 3);
    hcs.setLatency(LOAD_OP, 1);
    hcs.setLatency(CMP_OP, 0);
    hcs.setLatency(BR_OP, 0);
    hcs.setLatency(ADD_OP, 0);

    Function* f = Mod->getFunction("if_else");
    Schedule s = scheduleFunction(f, hcs);

    auto& retInstr = f->getBasicBlockList().back().back();

    STG graph = buildSTG(s, f);

    cout << "STG Is" << endl;
    graph.print(cout);

    map<string, int> layout = {{"a", 0}, {"b", 3}, {"c", 4}};
    emitVerilog(f, graph, layout);

    REQUIRE(runIVerilogTB("if_else"));
  }

  TEST_CASE("Accessing a memory address that requires address calculation") {
    createLLFile("./test/ll_files/read_2");

    SMDiagnostic Err;
    LLVMContext Context;

    string modFile = "./test/ll_files/read_2.ll";
    std::unique_ptr<Module> Mod(parseIRFile(modFile, Err, Context));
    if (!Mod) {
      outs() << "Error: No mod\n";
      assert(false);
    }

    HardwareConstraints hcs;
    hcs.setLatency(STORE_OP, 3);
    hcs.setLatency(LOAD_OP, 1);
    hcs.setLatency(CMP_OP, 0);
    hcs.setLatency(BR_OP, 0);
    hcs.setLatency(ADD_OP, 0);

    Function* f = Mod->getFunction("read_2");
    Schedule s = scheduleFunction(f, hcs);

    auto& retInstr = f->getBasicBlockList().back().back();

    STG graph = buildSTG(s, f);

    cout << "STG Is" << endl;
    graph.print(cout);

    map<string, int> layout = {{"a", 0}, {"b", 3}};
    emitVerilog(f, graph, layout);

    REQUIRE(runIVerilogTB("read_2"));
    
  }

  TEST_CASE("Looping over an array doing a[i] + 7") {
    createLLFile("./test/ll_files/loop_add_7");

    SMDiagnostic Err;
    LLVMContext Context;

    string modFile = "./test/ll_files/loop_add_7.ll";
    std::unique_ptr<Module> Mod(parseIRFile(modFile, Err, Context));
    if (!Mod) {
      outs() << "Error: No mod\n";
      assert(false);
    }

    HardwareConstraints hcs;
    hcs.setLatency(STORE_OP, 3);
    hcs.setLatency(LOAD_OP, 1);
    hcs.setLatency(CMP_OP, 0);
    hcs.setLatency(BR_OP, 0);
    hcs.setLatency(ADD_OP, 0);

    Function* f = Mod->getFunction("loop_add_7");
    Schedule s = scheduleFunction(f, hcs);

    auto& retInstr = f->getBasicBlockList().back().back();

    STG graph = buildSTG(s, f);

    cout << "STG Is" << endl;
    graph.print(cout);

    map<string, int> layout = {{"a", 0}, {"b", 10}};
    emitVerilog(f, graph, layout);

    //REQUIRE(runIVerilogTB("loop_add_7"));
  }
  
  // TEST_CASE("Parse a tiny C program") {
  //   createLLFile("./test/ll_files/tiny_test");

  //   SMDiagnostic Err;
  //   LLVMContext Context;

  //   string modFile = "./test/ll_files/tiny_test.ll";
  //   std::unique_ptr<Module> Mod(parseIRFile(modFile, Err, Context));
  //   if (!Mod) {
  //     outs() << "Error: No mod\n";
  //     assert(false);
  //   }

  //   outs() << "--All functions\n";
  //   for (auto& f : Mod->functions()) {
  //     outs() << "\t" << f.getName() << "\n";
  //   }

  //   Function* f = Mod->getFunction("foo");
  //   assert(f != nullptr);

  //   LowFSM programState;

  //   map<BasicBlock*, NodeId> bbIds;

  //   cout << "Basic blocks in main" << endl;
  //   for (auto& bb : f->getBasicBlockList()) {
  //     NodeId id = programState.addState({});

  //     bbIds.insert({&bb, id});

  //     outs() << "----- BASIC BLOCK" << "\n";
  //     outs() << bb << "\n";
  //     outs() << "Terminator for this block" << "\n";
  //   }

  //   for (auto& bb : f->getBasicBlockList()) {
  //     assert(contains_key(&bb, bbIds));
      
  //     auto termInst = bb.getTerminator();
  //     outs() << bb.getTerminator()->getOpcode() << "\n";
  //     if (BranchInst::classof(termInst)) {
  //       outs() << "\t\tIs a branch" << "\n";
  //     } else {
  //       outs() << "\t\tNOT branch" << "\n";
  //     }

  //     if (termInst->getNumSuccessors() == 1) {
  //       for (auto* nextBB : termInst->successors()) {
  //         assert(contains_key(nextBB, bbIds));

  //         programState.addEdge(map_find(&bb, bbIds),
  //                              map_find(nextBB, bbIds), {});
  //       }
  //     } else if (termInst->getNumSuccessors() == 0) {
  //       programState.addEdge(map_find(&bb, bbIds),
  //                            map_find(&bb, bbIds), {});
  //     }

  //   }

  //   auto& bb = f->getEntryBlock();
  //   assert(contains_key(&bb, bbIds));

  //   programState.setStartState(map_find(&bb, bbIds));

  //   emitVerilog("tiny_test", programState);
  // }

}
