{ ... }: {
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    # wireless.enable = true; # Rede sem fio; somente Thinkpad. Archleo nao tem wifi.

    firewall = {
      enable = true;
      allowedTCPPorts = [ 25565 25566 25567 25568 ];
      allowedUDPPorts = [ ];

    };
  };
}