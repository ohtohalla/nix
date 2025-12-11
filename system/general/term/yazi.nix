{pkgs, config, color-schemes, ...}: {
    programs.yazi = {
      enable = true;
      enableZshIntegration = true;
      flavors = {
        dark = pkgs.gruvterial-theme;
        };
      settings = {
        log = {
          enabled = false;
        };
        mgr = {
          show_hidden = true;
          sort_by = "mtime";
          ratio = [1 4 3];
          sort_sensitive = false;
          linemode = "mtime";
          mouse_events = ["click" "scroll" "move"];
          };
        preview = {
          wrap = "yes";
          image_quality = 70;
          };
          };
        };
      }

