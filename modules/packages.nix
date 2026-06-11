{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    protonup-qt
    firefox
    fastfetch
    kitty
    nixfmt
    vscode
    prismlauncher
    javaPackages.compiler.temurin-bin.jre-21
    javaPackages.compiler.temurin-bin.jre-17
    nerd-fonts.jetbrains-mono
    cmatrix
    python315
    mpv
    wget
    shairport-sync
    nqptp
    neovim
    obs-studio
    equibop
    wol
    gcc
    gnumake
    pkg-config
    libffi
    openssl
  ];
}
