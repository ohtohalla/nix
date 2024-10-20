{ pkgs, lib, ... }:

let
  mkBoolean = lib.gvariant.mkBoolean;
in
{
  # ...
  gtk = {
    enable = true;

    iconTheme = {
      name = "Gruvbox-Dark";
      package = pkgs.gruvbox-dark-icons-gtk;
    };

    theme = {
      name = "gruvbox-dark-gtk";
      package = pkgs.gruvbox-dark-gtk;
    };

    cursorTheme = {
      name = "Numix-Cursor";
      package = pkgs.numix-cursor-theme;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  home.sessionVariables.GTK_THEME = "gruvbox-dark-gtk";
  # ...

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
    "org/gnome/shell" = {
      favorite-apps = [
        "firefox.desktop"
        "kitty.desktop"
        "org.gnome.Nautilus.desktop"
      ];
      disable-user-extensions = false;
    };
    "org/gnome/desktop/peripherals" = {
      "touchpad/natural-scroll" = false;
      "touchpad/tap-to-click" = true;
      "touchpad/two-finger-scrolling-enabled" = true;
      };
    };
}
