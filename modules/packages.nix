{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    protonup-qt # proton-ge ne
    firefox # por que o brave ta apocar
    fastfetch # o deus da religiao do unix
    kitty # o melhor terminal indiscutivelmente
    nixfmt # rfc 166 tóis
    vscode # :shrug:
    zed # discutivelmente melhor que VSCODE mas eu preciso do PlatformIO
    prismlauncher # launcher tois que tem modrinth e curseforge
    javaPackages.compiler.temurin-bin.jre-25 # por que o 21 e 17 sao meio legado agora
    nerd-fonts.jetbrains-mono # a melhor fonte indiscutivelmente
    cmatrix # é bom pro ly-dm q eu uso
    python315 # merda extrema mas fazer oq, python é tipo Wii tem em todo canto
    mpv # melhor que VLC nos nossos corações
    wget # melhor que curl ne
    shairport-sync # iphone na mesa, linux na mente
    nqptp # airplay 2
    neovim # pra farmar aura e editar no TTY
    obs-studio # pra gravar eu sofrendo com o nix
    equibop # por que discord é o mal e o equibop é a luz
    gcc # gnu compilador codio
    gnumake # gnu fazer
    pkg-config # configura pacote acho
    libffi # lib
    openssl # "eu me importo com segurança" mano é uma dependencia
    SDL2 # pra jogar Unreal Tournament 1999
    SDL2_image # pra jogar Unreal Tournament 1999
    SDL2_ttf # pra jogar Unreal Tournament 1999
    davinci-resolve # o que eu não consigo resolver, o davinci resolve.
    sunshine # parsec meio merda
    uzdoom # melhor sourceport de doom que tem
    eden #melhor emulador de switch que tem, ta loco
  ];
}
