{ pkgs, config, ... }: {

    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search by name, run:
    # $ nix-env -qaP | grep wget
    environment.systemPackages = with pkgs; [
        mkalias
        orca-c
    ];    

    homebrew = {
    enable = true;
    brews = [
        "wireguard-go"
    ];
    casks = [
        "reaper"
        "affinity-photo"
        "affinity-publisher"
        "affinity-designer"
        "inkscape"
        "touchdesigner"
        "ableton-live-suite@10"
        "zotero"
        "izotope-product-portal"
        "native-access"
        "spitfire-audio"
        "dropbox"
        "internxt-drive"
        "vcv-rack"
        "pd"
        "plugdata"
        "focusrite-control"
        "steam"
        "discord"

    ];
    masApps = {
        #"Slack"

    };
    onActivation.cleanup = "zap";
    };
}
