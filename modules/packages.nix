{pkgs, ...}: {
 nixpkgs.config.allowUnfree = true;
 environment.systemPackages = with pkgs; [
  pkgs.brave
  pkgs.fastfetch # porra
  pkgs.kitty
  pkgs.nixpkgs-fmt
  pkgs.vscode
  pkgs.prismlauncher
  pkgs.gzdoom
  pkgs.javaPackages.compiler.temurin-bin.jre-21
  pkgs.javaPackages.compiler.temurin-bin.jre-17
  pkgs.javaPackages.compiler.temurin-bin.jre-8
  ];
}
