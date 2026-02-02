{
  description = "ItsDoomOne/NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.archleo = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./common.nix
        ./hardware/archleo-hardware.nix
        ./modules/network-archleo.nix        
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.doom = import ./home.nix;
          home-manager.backupFileExtension = "hm-backup";
        }
      ];
    };
    nixosConfigurations.thinkleo = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./common.nix
        ./hardware/thinkleo-hardware.nix
        ./modules/network-thinkleo.nix        
        
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.doom = import ./home.nix;
          home-manager.backupFileExtension = "hm-backup";
        }
      ];
    };
  };
}