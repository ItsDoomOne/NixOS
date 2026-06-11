{
  description = "ItsDoomOne/NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs, ... }@inputs:
    {
      nixosConfigurations.archleo = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./common.nix
          ./hardware/archleo-hardware.nix
          ./modules/archleo.nix
        ];
      };
      nixosConfigurations.thinkleo = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./common.nix
          ./hardware/thinkleo-hardware.nix
          ./modules/thinkleo.nix
        ];
      };
    };
}
