{ pkgs, config, ... }: {

    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search by name, run:
    # $ nix-env -qaP | grep wget
    environment.systemPackages = with pkgs; [
        mkalias
        fzf
        zellij
        zoxide
        nerd-fonts.iosevka
        nerd-fonts.iosevka-term
        nerd-fonts.iosevka-term-slab

    ];    

    homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
      };
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
        "thunderbird"
        "mullvad-vpn"
        "zen"
        "google-chrome"

    ];
    masApps = {
        "Boop" = 1518425043;
        "Bitwarden" = 1352778147;

    };
    };

}
