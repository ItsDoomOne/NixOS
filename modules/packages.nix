{pkgs, ...}: {
nixpkgs.config.allowUnfree = true;
environment.systemPackages = with pkgs; [
  pkgs.protonup-qt
  pkgs.firefox
  pkgs.fastfetch
  pkgs.kitty
  pkgs.nixpkgs-fmt
  pkgs.vscode
  pkgs.prismlauncher
  pkgs.javaPackages.compiler.temurin-bin.jre-21
  pkgs.javaPackages.compiler.temurin-bin.jre-17
  pkgs.nerd-fonts.jetbrains-mono
  pkgs.cmatrix
  pkgs.python315
  pkgs.mpv
  pkgs.wget
  pkgs.shairport-sync
  pkgs.nqptp
  pkgs.neovim
  pkgs.obs-studio
  pkgs.equibop
  pkgs.wol
  pkgs.gcc
  pkgs.gnumake
  pkgs.pkg-config
  pkgs.libffi
  pkgs.openssl
  ];
}
