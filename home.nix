{ pkgs, ... }: {
  home.username = "leonardohs"; 
  home.homeDirectory = "/home/leonardohs";
  home.stateVersion = "24.11"; 
  programs.home-manager.enable = true;

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
      rebuild = "sudo nixos-rebuild switch --flake ~/NixOS/.#archleo";
    };
  };

  programs.git = {
    enable = true;
    userName = "---------";
    userEmail = "---------------";
  };
  programs.kitty = {
    enable = true;
    extraConfig = builtins.readFile ./home/kitty/kitty.conf;
  };

  gtk = {
  enable = true;
  theme = {
    name = "Adwaita-dark";
    package = pkgs.gnome-themes-extra;
  };
};

  qt = {
    enable = true;
    platformTheme.name = "kde";
    style.name = "breeze-dark";
  };
}
