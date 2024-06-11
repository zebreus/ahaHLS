{
  description = "A Basic High Level Synthesis System Using LLVM";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-20.03";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        name = "ahaHLS";
        packages.default = pkgs.callPackage ./default.nix { };
      }
    );
}
