{ config, pkgs, ... }:


{
  imports =
    [ 
      ./../../system/darwin/darwin.nix
      ./../../profiles/default-packages-darwin.nix
      ./../../profiles/home/home-packages.nix
      ./../../profiles/home/home-dock.nix      
    ];

  programs.zsh.enable = true;

}
