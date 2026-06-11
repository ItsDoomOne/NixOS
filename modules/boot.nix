{ config, pkgs, ... }: {
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot = {
        enable = true;
        netbootxyz.enable = true;
        edk2-uefi-shell.enable = true;
        memtest86.enable = true;
      };
    };
  };
}
