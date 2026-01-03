{pkgs, ...}: {
 nixpkgs.config.allowUnfree = true;
 environment.systemPackages = with pkgs; [
  pkgs.brave
  pkgs.fastfetch
  pkgs.kitty
  pkgs.nixpkgs-fmt
  pkgs.vscode
  pkgs.prismlauncher
  pkgs.gzdoom
  pkgs.javaPackages.compiler.temurin-bin.jre-21
  pkgs.javaPackages.compiler.temurin-bin.jre-17
  pkgs.javaPackages.compiler.temurin-bin.jre-8
  pkgs.sonobus
  pkgs.vesktop
  pkgs.nerd-fonts.jetbrains-mono
  pkgs.cemu
  pkgs.cmatrix
  pkgs.python315
  pkgs.mpv
  pkgs.wget
  pkgs.vlc
  pkgs.uxplay
  pkgs.shairport-sync
  pkgs.nqptp
  pkgs.k3b
  pkgs.cdrdao
  pkgs.dvdplusrwtools
  ];
}
