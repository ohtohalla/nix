{pkgs, ...}: {
    system.defaults = {
    dock.autohide  = true;
    dock.persistent-apps = [
        "/Applications/TIDAL.app"
        "/Applications/Slack.app"
        "/Applications/Telegram.app/"
        "/Applications/Signal.app/"
        "/Applications/WhatsApp.app/"
        "/Applications/Zen.app"
        "/Applications/Firefox Developer Edition.app"
        "/Applications/Ghostty.app"
        "/Applications/Zed.app"
        "Applications/Thunderbird.app"
        "/Applications/Obsidian.app/"
        ];
    dock.autohide-time-modifier = 0.5;
    dock.autohide-delay = 0.0;
    dock.show-recents = false;
    dock.wvous-tl-corner = 2;        
    };
}
