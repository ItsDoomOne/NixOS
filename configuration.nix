{ config, pkgs, ... }: {
  imports =
    [
      ./archleo-hardware.nix
      ./modules/users.nix
      ./modules/localization.nix
      ./modules/network.nix
      ./modules/services.nix
      ./modules/packages.nix
      ./modules/environment.nix
      ./modules/programs.nix
      ./modules/boot.nix
    ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11"; 
}
