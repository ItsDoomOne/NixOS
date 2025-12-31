{ pkgs, ... }:

{
  users.users.leonardohs = {
    isNormalUser = true;
    shell = pkgs.fish;
    description = "Leonardo Heckler Schadek";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      # Aqui podes colocar apps que queres só para o teu user no futuro
    ];
  };
}