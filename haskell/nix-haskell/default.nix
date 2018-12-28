let
  pkgs = import <nixpkgs> {};
in rec {
  lhsEnv = pkgs.stdenv.mkDerivation {
    name = "nix-haskell";
    buildInputs = [
      pkgs.stdenv
      pkgs.ghc
      pkgs.stack
      pkgs.cabal-install
    ];
  };
}
