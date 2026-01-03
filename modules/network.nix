{ ... }: {
  networking = {
    hostName = "archleo";
    networkmanager.enable = true;
    # wireless.enable = true; # Rede sem fio; somente Thinkpad. Archleo nao tem wifi.

    firewall = {
      enable = true;
      allowedTCPPorts = [ 5000 25565 25566 25567 25568 7000 7001 7100 ];
      allowedUDPPorts = [ 5000 5353 6000 6001 7000 7011 ];
      allowedUDPPortRanges = [ { from = 32768; to = 61000; } ];
    };
  };
}