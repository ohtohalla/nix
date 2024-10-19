{ config, pkgs, ... }:


{
  imports =
    [ 
      ./../../system/darwin/darwin.nix
      ./../../profiles/default-packages.nix
      ./../../profiles/work/work-packages.nix
      ./../../profiles/work/work-dock.nix      
    ];
}