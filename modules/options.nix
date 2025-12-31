{ config, pkgs, ...}: {
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
}