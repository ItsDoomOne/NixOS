{ config, pkgs, ... }: {
  imports =
    [
      ./hardware-configuration.nix
      ./modules/users.nix
      ./modules/localization.nix
      ./modules/network.nix
      ./modules/services.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  programs.git.enable = true;
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };
programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set -g fish_greeting ""
      function fish_greeting
       fastfetch
      end
    '';
  };
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
  pkgs.brave
  pkgs.fastfetch # porra
  pkgs.kitty
  nixpkgs-fmt
  vscode
  ];

  system.stateVersion = "25.11"; 

  environment.sessionVariables = {
    TERMINAL = "kitty";
  };
}
