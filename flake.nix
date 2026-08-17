{
  description = "Flake for installing cryonix-nvim separately.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05-small";
    systems,url = "github:nix-systems/default-linux";
  };

  outputs = { nixpkgs, systems, ... }@inputs: let
    inherit (nixpkgs) lib;

    eachSystem = lib.genAttrs {import systems;};
    pkgsFor    = eachSystem {
      system: import nixpkgs {
        localSystem = system;
        overlays    = [ ];
      };
    };
  in {
    packages = eachSystem (system: {
      default = pkgsFor.${system}.callPackage ./default.nix { };
    });
  };
}
