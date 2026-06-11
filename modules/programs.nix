{ config, pkgs, ... }: {
  programs = {
    nix-ld.enable = true;
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
    };
    fish = {
      enable = true;
      interactiveShellInit = ''
        set -g fish_greeting ""
        fastfetch
      '';
      shellAliases = {
        nr = "sudo nixos-rebuild switch --flake .#archleo";
        gadd = "git add .";
        gcom = "git commit -m";
        gpus = "git push";
        editnix = "code ~/NixOS";
        rebuild = "sudo nixos-rebuild switch --flake ~/NixOS/.#archleo";
      };
    };
    git = {
      enable = true;
      config = {
        user = {
          name = "ItsDoomOne";
          email = "leodroid796@gmail.com";
        };
      };
    };
    appimage = {
      enable = true;
      binfmt = true;
    };
  };
}
