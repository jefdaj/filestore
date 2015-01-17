# This file was generated with `cabal2nix ./. > default.nix`,
# then edited to pick up the current system's haskellPackages.

{ haskellPackages ? (import <nixpkgs> {}).pkgs.haskellPackages }:

haskellPackages.cabal.mkDerivation (self: {
  pname = "filestore";
  version = "0.6.0.3";
  src = ./.;
  buildDepends = with haskellPackages;
    [ Diff filepath parsec split time utf8String xml ];
  testDepends = with haskellPackages;
    [ Diff filepath HUnit mtl time ];
  meta = {
    description = "Interface for versioning file stores";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
