{ pkgs, ... }: {
  home.username = "leonardohs"; 
  home.homeDirectory = "/home/leonardohs";
  home.stateVersion = "24.11"; 

  # O Home Manager precisa disso pra se autogerenciar
  programs.home-manager.enable = true;

  # MIGRADO DE OPTIONS.NIX / PROGRAMS.NIX
  programs.fish = {
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
    };
  };

  # Se tu quiser que o Git já venha configurado com seu nome
  programs.git = {
    enable = true;
    userName = "ItsDoomOne";
    userEmail = "leodroid796@gmail.com";
  };
}