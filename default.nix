{ sources ? import ./nix/sources.nix
, compiler ? "ghc865"
} :
let
  niv = import sources.nixpkgs {
    overlays = [
      (_ : _ : { niv = import sources.niv {}; })
    ] ;
    config = {};
  };
  pkgs = niv.pkgs;
  myHaskellPackages = pkgs.haskell.packages.${compiler};
in
myHaskellPackages.callCabal2nix "HaskellNixCabalStarter" (./.) {}
