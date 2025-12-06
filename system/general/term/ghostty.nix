{pkgs, config, color-schemes, ...}: {
    programs.ghostty = {
    enable = true;
    enableZshIntegration = true;
    package = null;
    settings = {
      font-size = 12;
      font-family = "Iosevka Nerd Font";
      unfocused-split-opacity = 0.95;
      window-theme = "dark";
    theme = "Gruvbox Dark";  
      };
    };
}
