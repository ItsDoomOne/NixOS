{ pkgs, ... }:

{
  users.users.doom = {
    isNormalUser = true;
    shell = pkgs.fish;
    description = "Leonardo Heckler Schadek";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };
}
