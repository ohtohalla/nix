{ pkgs, config, ... }: {

    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search by name, run:
    # $ nix-env -qaP | grep wget
    environment.systemPackages = with pkgs; [
        git
        firefox-devedition
        reaper
        gnome-tweaks
        zathura
        texliveFull
        obsidian
        signal-desktop
        signal-cli
        telegram-desktop
        tg
        zapzap
        bitwarden-desktop
        bitwarden-cli
        tidal-hifi
        cmus
        dconf2nix
    ];    


    fonts.packages = [
    (pkgs.nerdfonts.override { fonts = [ "Iosevka" ]; })
    ];
}
