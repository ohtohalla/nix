{ config, pkgs, ... }: {
    
  imports = [
    ./../../system/general/term/term.nix
    ./../../system/general/term/kitty.nix
    ./../../system/general/term/zellij.nix
    ./../../system/general/nixvim/nixvim.nix 
    ./git.nix
    ./../../system/general/term/ghostty.nix
    ./../../system/general/term/yazi.nix
  ];

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [

  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {

  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
