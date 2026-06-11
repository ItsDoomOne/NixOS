{ ... }: {
  networking.hostName = "archleo";
  services.xserver.xkb = {
    layout = "br";
    variant = "thinkpad";
  };
  hardware.bluetooth.enable = true;
}
