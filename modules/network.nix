{ ... }: {
  networking = {
    hostName = "archleo";
    networkmanager.enable = true;
    # wireless.enable = true; # Rede sem fio; somente Thinkpad. Archleo nao tem wifi.

    firewall = {
    enable = false;
        allowedTCPPorts = [ 
      5000 7000 7001 7100     # AirPlay
      25565 25566 25567 25568 # Minecraft
    ];

    allowedUDPPorts = [ 
      319 320                      # NQPTP
      5353                         # mDNS / Avahi
      5000 6000 6001 7000 7011     # Shairport-Sync UDP
    ];

    allowedUDPPortRanges = [ 
      { from = 32768; to = 61000; } # Range do airplay cru
      { from = 6000; to = 6009; }   # Range do airplay 2 
    ];
  };
};
}