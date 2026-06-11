{ ... }: {
  networking.hostName = "archleo";
  services.xserver.xkb = {
    layout = "br";
    variant = "abnt2";
  };
}