{ pkgs, config, ... }: {

    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search by name, run:
    # $ nix-env -qaP | grep wget
    environment.systemPackages = with pkgs; [
        mkalias
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
        "orca"

    ];
    masApps = {
        #"Slack"

    };
    onActivation.cleanup = "zap";
    };
}
