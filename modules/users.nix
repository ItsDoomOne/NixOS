{ pkgs, ... }:

{
  users.users.leonardohs = {
    isNormalUser = true;
    shell = pkgs.fish;
    description = "Leonardo Heckler Schadek";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      gzdoom
      wezterm
    ];
  };
}