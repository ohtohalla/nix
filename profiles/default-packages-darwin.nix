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
        "qobuz"
        "zotero"
        "utm"
        "anki"
        "obsidian"
        "kitty"
        "signal"
        "telegram"
        "whatsapp"
        "thunderbird"
        "mullvadvpn"
        "zen-browser"
        "google-chrome"

    ];
    masApps = {
        "Boop" = 1518425043;
        "Bitwarden" = 1352778147;

    };
    };

    fonts.packages = [
    (pkgs.nerdfonts.override { fonts = [ "Iosevka" ]; })
    ];
}
