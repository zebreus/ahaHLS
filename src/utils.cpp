#include "utils.h"


#include <iostream>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <cxxabi.h>
#include <sstream>

using namespace llvm;
using namespace std;

namespace ahaHLS {

  std::string instructionString(Instruction* const iptr) {
    std::string str;
    llvm::raw_string_ostream ss(str);
    ss << *iptr;

    return ss.str();
  }

  std::string valueString(const Value* const iptr) {
    assert(iptr != nullptr);
    
    std::string str;
    llvm::raw_string_ostream ss(str);
    ss << *iptr;

    return ss.str();
  }
  
  std::string typeString(Type* const tptr) {
    std::string str;
    llvm::raw_string_ostream ss(str);
    ss << *tptr;

    return ss.str();
  }

  int getValueBitWidth(Value* const instr) {
    Type* tp = instr->getType();

    //cout << "Getting bit width for " << valueString(instr) << endl;
    
    return getTypeBitWidth(tp);
  }

  int getTypeBitWidth(Type* const tp) {
    int width;

    if (IntegerType::classof(tp)) {
      IntegerType* iTp = dyn_cast<IntegerType>(tp);
      width = iTp->getBitWidth();
    } else if (PointerType::classof(tp)) {
      PointerType* pTp = dyn_cast<PointerType>(tp);

      if (!IntegerType::classof(pTp->getElementType())) {
        cout << "Element type = " << typeString(pTp->getElementType()) << endl;
      }
      assert(IntegerType::classof(pTp->getElementType()));

      IntegerType* iTp = dyn_cast<IntegerType>(pTp->getElementType());
      width = iTp->getBitWidth();

    } else if (tp->isFloatTy()) {
      // TODO: Make floating point width parametric
      return 32;
    } else if (tp->isStructTy()) {
      width = 0;
      StructType* stp = dyn_cast<StructType>(tp);
      for (auto* fieldType : stp->elements()) {
        width += getTypeBitWidth(fieldType);
      }
    } else {
      std::cout << "Type = " << typeString(tp) << std::endl;
      assert(ArrayType::classof(tp));
      Type* iTp = dyn_cast<ArrayType>(tp)->getElementType();
      assert(IntegerType::classof(iTp));
      width = dyn_cast<IntegerType>(iTp)->getBitWidth();
          
      //cout << "Array width = " << dyn_cast<ArrayType>(tp)->getElementType() << endl;
      //assert(false);
    }

    return width;

    // assert(IntegerType::classof(tp));

    // return dyn_cast<IntegerType>(tp)->getBitWidth();
  }

  bool matchesCallDemangled(std::string str, llvm::Instruction* const iptr) {
    if (!CallInst::classof(iptr)) {
      return false;
    }

    CallInst* call = dyn_cast<CallInst>(iptr);
    Function* called = call->getCalledFunction();

    string name = called->getName();
    if (!canDemangle(name)) {
      return false;
    }

    if (hasPrefix(demangle(name), str)) {
      return true;
    }
    return false;
    
  }
  
  bool matchesCall(std::string str, llvm::Instruction* const iptr) {
    if (!CallInst::classof(iptr)) {
      return false;
    }

    CallInst* call = dyn_cast<CallInst>(iptr);
    Function* called = call->getCalledFunction();

    string name = called->getName();

    if (hasPrefix(name, str)) {
      return true;
    }
    return false;

  }
  
  bool isBuiltinPortWrite(llvm::Instruction* const iptr) {
    if (!CallInst::classof(iptr)) {
      return false;
    }

    CallInst* call = dyn_cast<CallInst>(iptr);
    Function* called = call->getCalledFunction();

    string name = called->getName();

    if (hasPrefix(name, "builtin_write_port_")) {
      return true;
    }
    return false;
  }

  bool isBuiltinPortRead(llvm::Instruction* const iptr) {
    if (!CallInst::classof(iptr)) {
      return false;
    }

    CallInst* call = dyn_cast<CallInst>(iptr);
    Function* called = call->getCalledFunction();

    string name = called->getName();

    if (hasPrefix(name, "builtin_read_port_")) {
      return true;
    }
    return false;
  }
  
  bool isBuiltinFifoWrite(llvm::Instruction* const iptr) {
    if (!CallInst::classof(iptr)) {
      return false;
    }

    CallInst* call = dyn_cast<CallInst>(iptr);
    Function* called = call->getCalledFunction();

    if (called == nullptr) {
      return false;
    }
    
    if (!called->hasName()) {
      return false;
    }

    string name = called->getName();

    if (hasPrefix(name, "builtin_write_fifo_")) {
      return true;
    }
    return false;
  }

  bool isBuiltinFifoRead(llvm::Instruction* const iptr) {
    if (iptr == nullptr) {
      return false;
    }
    
    //cout << "Checking if " << valueString(iptr) << " is builtin read" << endl;
    if (!CallInst::classof(iptr)) {
      return false;
    }

    CallInst* call = dyn_cast<CallInst>(iptr);
    Function* called = call->getCalledFunction();

    //cout << "Got called" << endl;
    if (called == nullptr) {
      return false;
    }

    //cout << "Called not null" << endl;    

    if (!called->hasName()) {
      return false;
    }

    //cout << "Has a name" << endl;
    
    string name = called->getName();

    if (hasPrefix(name, "builtin_read_fifo_")) {
      return true;
    }
    return false;
  }

  bool isBuiltinStallCall(llvm::Instruction* const iptr) {
    if (!CallInst::classof(iptr)) {
      return false;
    }

    CallInst* call = dyn_cast<CallInst>(iptr);
    Function* called = call->getCalledFunction();

    string name = called->getName();

    // Look for stall
    if (hasPrefix(name, "builtin_stall")) {
      return true;
    }
    return false;
  }

  std::string floatBits(const float f) {
    APFloat fpVal(f); // Create ap
    string fBits = fpVal.bitcastToAPInt().toString(2, false);
    return "32'b" + zeroExtend(fBits, 32);
  }

  std::string getPortName(llvm::Instruction* const instr) {
    assert(isBuiltinPortCall(instr));

    CallInst* call = dyn_cast<CallInst>(instr);
    Function* called = call->getCalledFunction();

    string name = called->getName();

    if (isBuiltinPortRead(instr)) {
      return takeUntil(".", name.substr(string("builtin_read_port_").size()));
    } else {
      assert(isBuiltinPortWrite(instr));
      return takeUntil(".", name.substr(string("builtin_write_fifo_").size()));
    }
  }

  
  
  std::string sanitizeFormatForVerilog(const std::string& str) {
    string san = "";
    for (auto c : str) {

      if (c == '"') {
        san += "\\\"";
      } else if (c == '%') {
        san += '$';
      } else {
        san += c;
      }
        
    }
    return san;
  }

  bool canDemangle(const std::string& mangled) {
    const char* mangledName = mangled.c_str();
    int status = 0;
  
    abi::__cxa_demangle(mangledName, 0, 0, &status);
    return status == 0;
  }

  std::string demangle(const std::string& mangled) {
    const char* mangledName = mangled.c_str();
    int status = 0;
  
    const char* realName = abi::__cxa_demangle(mangledName, 0, 0, &status);
    bool quiet = false;
  
    switch (status) {
    case 0:
      if (quiet) {
        puts(realName);
      } else {
        //printf("%s, mangled: %s\n", realName, mangledName);
      }

      return string(realName);

    case -1:
      // printf("FAIL: failed to allocate memory while demangling %s\n",
      //        mangledName);
      free((void *)realName);  
      assert(false);

    case -2:
      // printf("FAIL: %s is not a valid name under the C++ ABI mangling rules\n",
      //        mangledName);
      free((void *)realName);  
      assert(false);

    default:
      //printf("FAIL: some other unexpected error: %d\n", status);
      free((void *)realName);  
      assert(false);
    }
  }

  std::string demangledFuncName(const std::string& demangledName) {
    //cout << "Getting function from = " << demangledName << endl;
    string nextNamespace = takeUntil("::", demangledName);
    //cout << "namespace = " << nextNamespace << endl;
    string remainder = drop("::", demangledName);
    //cout << "remainder = " << remainder << endl;

    string funcDecl = drop("::", remainder);
    //cout << "FuncDecl = " << funcDecl << endl;
    string funcName = takeUntil("(", funcDecl);
    //cout << "FuncName = " << funcName << endl;

    return funcName;
  }

  std::string drop(std::string pattern, const std::string& name) {
    size_t pos = name.find(pattern);
    if (pos == std::string::npos) {
      return name;
    }

    return name.substr(pos + pattern.size());
  }

  std::string takeUntil(std::string pattern, const std::string& name) {
    size_t pos = name.find(pattern);
    return name.substr(0, pos);
  }

  std::string ifStr(const std::string s) {
    return "if " + parens(s);
  }

  Type* getPointedToType(llvm::Type* tp) {
    assert(PointerType::classof(tp));
    return dyn_cast<PointerType>(tp)->getElementType();
  }

  // TODO: Replace with a real parser
  std::string extractFunctionName(const std::string& name) {
    string funcName = "";
    int i = 0;
    while (i < (int) name.size()) {
      if (name[i] == '(') {
        break;
      }
      funcName += name[i];
      i++;
    }
    return funcName;
  }
  
  llvm::Function*
  getFunctionByDemangledName(llvm::Module* mod, const std::string& name) {
    for (auto& f : mod->functions()) {
      if (canDemangle(f.getName())) {
        cout << demangle(f.getName()) << endl;
        if (extractFunctionName(demangle(f.getName())) == name) {
          return &f;
        }
      }

    }

    cout << "Error: Could not find " << name << endl;
    assert(false);
  }

  std::string demangledClassName(const std::string& demangledName) {
    //cout << "Getting class from = " << demangledName << endl;
    string nextNamespace = takeUntil("::", demangledName);
    //cout << "namespace = " << nextNamespace << endl;
    string remainder = drop("::", demangledName);
    //cout << "remainder = " << remainder << endl;

    string funcDecl = drop("::", remainder);
    string funcName = takeUntil("(", funcDecl);
    //cout << "FuncName = " << funcName << endl;
    assert(false);
  }

  llvm::Type* getTypePointedTo(llvm::Type* const tp) {
    assert(PointerType::classof(tp));
    return dyn_cast<PointerType>(tp)->getElementType();
  }

  pair<string, string> splitOn(std::string pattern, const std::string& name) {
    auto fst = takeUntil(pattern, name);
    return {fst, drop(pattern, name)};
  }

  set<Instruction*> allInstrs(Function* f) {
    set<Instruction*> instrs;
    for (auto& bb : f->getBasicBlockList()) {
      for (auto& instrR : bb) {
        instrs.insert(&instrR);
      }
    }
    return instrs;
  }

  vector<string> splitRep(const std::string& pattern,
                          const std::string& val) {
    vector<string> vals;
    string lastVal = val;
    //cout << "Dropping " << pattern << " from " << lastVal << endl;

    pair<string, string> dropped;
    do {
      dropped = splitOn(pattern, lastVal);
      lastVal = dropped.second;
      vals.push_back(dropped.first);
      //cout << "dropped =  " << dropped.first << ", " << dropped.second << endl;
    } while(dropped.first.size() != lastVal.size());
    vals.push_back(dropped.second);

    return vals;
  }
  
}
