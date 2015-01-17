# This file was generated by `cabal2nix ./. > shell.nix`,
# then edited to work as a development environment.
#
# Use `nix-shell --pure` to set everything up.
#
# Because it's "pure" (all dependencies are explicit),
# you need to add your text editor and any other tools
# to devDepends below.

{ pkgs ? (import <nixpkgs> {}).pkgs }:

let
  inherit (pkgs) haskellPackages;
  devDepends = [
    haskellPackages.cabalInstall
    pkgs.git
    pkgs.vim
  ];

in haskellPackages.cabal.mkDerivation (self: {
  pname = "filestore";
  version = "0.6.0.3";
  src = ./.;

  buildDepends = with haskellPackages; devDepends ++
    [ Diff filepath parsec split time utf8String xml ];

  testDepends = with haskellPackages;
    [ Diff filepath HUnit mtl time ];

  meta = {
    description = "Interface for versioning file stores";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})