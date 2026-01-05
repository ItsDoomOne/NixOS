{ config, pkgs, ... }: {
  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot = {
      enable = true;
      netbootxyz.enable = true;
      edk2-uefi-shell.enable = true;
      memtest86.enable = true; # memtest é inutil em 90% dos casos.
    };
  };
}
