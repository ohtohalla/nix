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
        #"mas"
    ];
    casks = [
        "microsoft-teams"

    ];
    masApps = {
        "Slack" = 803453959;

    };
    onActivation.cleanup = "zap";
    };
}