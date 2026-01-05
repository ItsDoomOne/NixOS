{pkgs, ...}: {
 nixpkgs.config.allowUnfree = true;
 environment.systemPackages = with pkgs; [
  pkgs.brave
  pkgs.fastfetch
  pkgs.kitty
  pkgs.nixpkgs-fmt
  pkgs.vscode
  pkgs.prismlauncher
  pkgs.javaPackages.compiler.temurin-bin.jre-21
  pkgs.javaPackages.compiler.temurin-bin.jre-17
  pkgs.vesktop
  pkgs.nerd-fonts.jetbrains-mono
  pkgs.cmatrix
  pkgs.python315
  pkgs.mpv
  pkgs.wget
  pkgs.shairport-sync
  pkgs.nqptp
  pkgs.brasero
  pkgs.cdrdao
  pkgs.dvdplusrwtools
  pkgs.neovim
  ];
}
