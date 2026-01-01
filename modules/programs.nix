{ config, pkgs, ...}: {
  programs= {
    steam = {
      enable = true;
      remotePlay.openFirewall = true; 
      dedicatedServer.openFirewall = true; 
      localNetworkGameTransfers.openFirewall = true; 
      };
    fish = {
      enable = true; 
      };
    git = {
      enable = true; 
      };
    appimage = {
      enable = true;
      binfmt = true; 
      };
    };
}