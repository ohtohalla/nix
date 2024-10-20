# darwin.nix

{ pkgs, ... }: 

{

    # Auto upgrade nix package and the daemon service.
    services.nix-daemon.enable = true;
    services.karabiner-elements.enable = true;

    # Used for backwards compatibility, please read the changelog before changing.
    # $ darwin-rebuild changelog
    system.stateVersion = 4;

    # The platform the configuration will be used on.
    nixpkgs.hostPlatform = "aarch64-darwin";
    
    # Install Rosetta before!
    nix.extraOptions = ''
        extra-platforms = x86_64-darwin aarch64-darwin
    '';

    users.users.juhokajava = {
        name = "juhokajava";
        home = "/Users/juhokajava";
    };
    system.defaults = {
    finder.FXPreferredViewStyle = "clmv";
    finder.AppleShowAllExtensions = true;
    finder.AppleShowAllFiles = true;
    finder.CreateDesktop = false;
    finder.ShowPathbar = true;
    loginwindow.GuestEnabled  = false;
    NSGlobalDomain.AppleICUForce24HourTime = true;
    NSGlobalDomain.AppleInterfaceStyle = "Dark";
    NSGlobalDomain.KeyRepeat = 2;
    screencapture.location = "~/Pictures/screenshots";
    screensaver.askForPasswordDelay = 10;
    NSGlobalDomain.AppleScrollerPagingBehavior = true;
    NSGlobalDomain.AppleShowAllExtensions = true;
    NSGlobalDomain.AppleShowAllFiles = true;
    NSGlobalDomain.NSAutomaticInlinePredictionEnabled = false;
    NSGlobalDomain.NSAutomaticSpellingCorrectionEnabled = false;
    NSGlobalDomain.NSNavPanelExpandedStateForSaveMode = true;
    NSGlobalDomain."com.apple.mouse.tapBehavior" = 1;
    NSGlobalDomain."com.apple.swipescrolldirection" = false;
    WindowManager.EnableStandardClickToShowDesktop = false;
    loginwindow.SHOWFULLNAME = true;
    trackpad.Clicking = true;
    trackpad.Dragging = true;
    };
    system.startup.chime = false;
    security.pam.enableSudoTouchIdAuth = true;
}
