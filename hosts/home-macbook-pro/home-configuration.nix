{ config, pkgs, ... }:


{
  imports =
    [ 
      ./../../system/darwin/darwin.nix
      ./../../profiles/default-packages.nix
      ./../../profiles/home/home-packages.nix
      ./../../profiles/home/home-dock.nix      
    ];
}