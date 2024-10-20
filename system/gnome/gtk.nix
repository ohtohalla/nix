{pkgs, ...}: {
  gtk.enable = true;
  gtk.font.name = "Iosevka Nerd Font";
  gtk.font.package = pkgs.iosevka;
  gtk.theme.name = "Gruvbox-Dark";
  gtk.theme.package = pkgs.gruvbox-gtk-theme;
  gtk.iconTheme.name = "Gruvbox-Plus-Dark";  # Candy and Tela also look good
  gtk.iconTheme.package = pkgs.gruvbox-plus-icons;
  gtk.gtk3.extraConfig = {
    gtk-application-prefer-dark-theme = true;
    gtk-icon-theme-name   = "Gruvbox-Plus-Dark";
  };
  dconf.settings = {
    "org/gnome/desktop/interface" = {
    };
  };
  xdg.systemDirs.data = [
    "${pkgs.gtk3}/share/gsettings-schemas/${pkgs.gtk3.name}"
    "${pkgs.gsettings-desktop-schemas}/share/gsettings-schemas/${pkgs.gsettings-desktop-schemas.name}"
  ];
}  



