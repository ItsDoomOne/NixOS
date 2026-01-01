{ pkgs, ...}: {
  services = {
  xserver.enable = false; # EU ODEIO O XORG
  desktopManager.plasma6.enable = true; # Infelizmente o plasma é o que funciona pra mim
  printing.enable = true; # Odeio impressoras mais do que o Xorg.
  pulseaudio.enable = false; # Pipewire ftwwwwwwwwwwwwww
  openssh.enable = true; # ssh ftwwwwww
  pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true; # JACK é util no SonoBus (uso meu iPhone como microfone usando o Sonobus)
  };
  displayManager.ly = {
    enable = true;
    settings = {
      animate = true;
      animation = "matrix"; 
      bigclock = true;
      clock = "%c";
      hide_f1_commands = true; 
    };
  };
  };
  security = {
    rtkit.enable = true; # eu nao sei o que é rtkit mas tava ali por algum motivo
  };
}