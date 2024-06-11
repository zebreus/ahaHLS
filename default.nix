{
  stdenv,
  lib,
  fetchFromGitHub,
  makeWrapper,
  cmake,
  llvmPackages_7,
  verilog,
  z3,
}:

stdenv.mkDerivation {
  pname = "ahaHLS";
  version = "0.1.0";

  src = ./.;

  enableParallelBuilding = true;

  nativeBuildInputs = [
    cmake
    makeWrapper
  ];

  buildInputs = [
    z3
    llvmPackages_7.llvm
    llvmPackages_7.clang
    verilog
  ];

  installPhase = ''
    install -Dm 755 aha-HLS $out/bin/ahaHLS
    wrapProgram $out/bin/ahaHLS --prefix PATH ":" ${
      lib.makeBinPath [
        z3
        llvmPackages_7.llvm
        llvmPackages_7.clang
        verilog
      ]
    }
  '';

  meta = with stdenv.lib; {
    description = "Basic High Level Synthesis System Using LLVM";
    homepage = "https://github.com/dillonhuff/ahaHLS/";
    license = licenses.mit;
  };
}
