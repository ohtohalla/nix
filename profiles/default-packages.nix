{ pkgs, config, ... }: {

    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search by name, run:
    # $ nix-env -qaP | grep wget
    environment.systemPackages = with pkgs; [
        mkalias
        fzf
        zellij
        zoxide

        #(nixvim.legacyPackages."${pkgs.stdenv.hostPlatform.system}".makeNixvim {
         #   colorschemes.gruvbox.enable = true;
        #})
    ];    

    homebrew = {
    enable = true;
    brews = [
        "mas"
        "neofetch"
        "aerc"
        "docker"
    ];
    casks = [
        "hammerspoon"
        "firefox@developer-edition"
        "vscodium"
        "zoom"
        "vlc"
        "tidal"
        "zotero"
        "utm"
        "anki"
        "obsidian"
        "kitty"
        "signal"
        "telegram"
        "whatsapp"

    ];
    masApps = {
        "Boop" = 1518425043;
        "Xcode" = 497799835;
        "Bitwarden" = 1352778147;

    };
    onActivation.cleanup = "zap";
    };

    fonts.packages = [
    (pkgs.nerdfonts.override { fonts = [ "Iosevka" ]; })
    ];
}