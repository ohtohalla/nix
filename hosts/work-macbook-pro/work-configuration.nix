{ config, pkgs, ... }:


{
  imports =
    [ 
      ./../../system/darwin/darwin.nix
      ./../../profiles/default-packages-darwin.nix
      ./../../profiles/work/work-packages.nix
      ./../../profiles/work/work-dock.nix      
    ];

  programs.zsh.enable = true;

}
