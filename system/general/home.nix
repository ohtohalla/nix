{ config, pkgs, ... }: {
    
  imports = [
    ./../../system/general/term.nix
    ./../../system/general/kitty.nix
    ./../../system/general/nixvim/nixvim.nix    
  ];

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [

  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {

  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}