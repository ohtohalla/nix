{pkgs, config, ...}: {
    programs.kitty = {
    enable = true;
    font.name = "Iosevka Nerd Font";
    themeFile = "GruvboxMaterialDarkMedium";
    };
}