{ pkgs, lib, ... }:

{
  imports = [
    ./gtk.nix
  ];

   home.packages = with pkgs; [
   gnomeExtensions.tactile
   gnomeExtensions.tiling-assistant
   gnomeExtensions.espresso
  ];


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
         enabled-extensions = [
       "tiling-assistant@leleat-on-github"
       "user-theme@gnome-shell-extensions.gcampax.github.com"
       "tactile@lundal.io"
       "espresso@coadmunkee.github.com"];
      };
    "org/gnome/desktop/peripherals" = {
      "touchpad/natural-scroll" = false;
      "touchpad/tap-to-click" = true;
      "touchpad/two-finger-scrolling-enabled" = true;
      };
    };
}

