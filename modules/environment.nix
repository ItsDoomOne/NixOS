{pkgs,  ... }: {
  environment.sessionVariables = {
    TERMINAL = "kitty";
    EDITOR = "neovim";
    LIBVA_DRIVER_NAME = "nvidia";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    NVD_BACKEND = "direct";
    GBM_BACKEND = "nvidia-drm";
    PKG_CONFIG_PATH = "${pkgs.libffi.dev}/lib/pkgconfig";
    C_INCLUDE_PATH = "${pkgs.libffi.dev}/include:${pkgs.openssl.dev}/include";
    LIBRARY_PATH = "${pkgs.libffi.out}/lib:${pkgs.openssl.out}/lib";
  };
}
