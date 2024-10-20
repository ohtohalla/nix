# home.nix

{config, pkgs, ...}: {

  imports = [
    ./../../system/general/home.nix
    ./../../system/gnome/gnome.nix
  ];

}
