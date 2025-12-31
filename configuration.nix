{ config, pkgs, ... }: {
  imports =
    [
      ./hardware-configuration.nix
      ./modules/users.nix
      ./modules/localization.nix
      ./modules/network.nix
      ./modules/services.nix
      ./modules/packages.nix
      ./modules/environment.nix
      ./modules/options.nix
    ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  system.stateVersion = "25.11"; 
}
