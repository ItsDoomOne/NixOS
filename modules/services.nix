{ pkgs, lib, ...}: {
  services = {
  desktopManager.plasma6.enable = true;
  printing.enable = true;
  openssh.enable = true;
  pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
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
    enable = true;
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
    rtkit.enable = true;
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
}