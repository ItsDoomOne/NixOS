{ pkgs, ...}: {
  services.xserver.enable = false; # EU ODEIO O XORG
  services.displayManager.sddm.enable = true; # ly-dm >>>>> sddm mas nao é esse o meu foco.
  services.desktopManager.plasma6.enable = true; # Infelizmente o plasma é o que funciona pra mim
  services.printing.enable = true; # Odeio impressoras mais do que o Xorg.
  services.pulseaudio.enable = false; # Pipewire ftwwwwwwwwwwwwww
  security.rtkit.enable = true; # eu nao sei o que é rtkit
  services.openssh.enable = true; # ssh ftwwwwww
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true; # JACK é util no SonoBus (uso meu iPhone como microfone usando o Sonobus)
  };
}