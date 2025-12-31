{pkgs, ...}: {
 nixpkgs.config.allowUnfree = true;
 environment.systemPackages = with pkgs; [
  pkgs.brave
  pkgs.fastfetch # porra
  pkgs.kitty
  pkgs.nixpkgs-fmt
  pkgs.vscode
  ];
}
