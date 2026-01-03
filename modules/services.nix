{ pkgs, lib, ...}: {
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
    extraConfig.pipewire."92-low-latency" = {
      "context.properties" = {
      "default.clock.rate" = 48000;
      "default.clock.allowed-rates" = [ 44100 48000 88200 96000 ];
      };
    };
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
  avahi = {
    enable = true; # Avahi pro UxPlay e Streming Lossless de audio.
    nssmdns4 = true;
    publish = {
      enable = true;
      addresses = true;
      userServices = true;
      workstation = true;
    };
  };
  };
  security = {
    rtkit.enable = true; # eu nao sei o que é rtkit mas tava ali por algum motivo
  };
  nixpkgs.overlays = [
    (final: prev: {
      shairport-sync = prev.shairport-sync.override { enableAirplay2 = true; };
    })
  ];

  systemd.services.nqptp = {
    description = "NQPTP Daemon";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.nqptp}/bin/nqptp";
      AmbientCapabilities = [ "CAP_NET_RAW" "CAP_NET_BIND_SERVICE" ];
      CapabilityBoundingSet = [ "CAP_NET_RAW" "CAP_NET_BIND_SERVICE" ];
      User = "root";
      Restart = "on-failure";
    };
  };

  services.shairport-sync.enable = true;
  services.shairport-sync.openFirewall = true;

  systemd.services.shairport-sync = {
    after = [ "network.target" "avahi-daemon.service" "nqptp.service" "pipewire.service" ];
    wants = [ "nqptp.service" ];
    serviceConfig = {
      ExecStart = lib.mkForce [
        "" 
        "${pkgs.shairport-sync}/bin/shairport-sync -a 'ArchLeo' -o pa -S soxr -M -g"
      ];
      User = lib.mkForce "leonardohs";
      Group = lib.mkForce "users";
      AmbientCapabilities = [ "CAP_NET_RAW" "CAP_SYS_NICE" ];
      CapabilityBoundingSet = [ "CAP_NET_RAW" "CAP_SYS_NICE" ];
      Restart = "on-failure";
    };
  };
}