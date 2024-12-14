{pkgs, ...}: {
    system.defaults = {
    dock.autohide  = true;
    dock.persistent-apps = [
        "/Applications/Qobuz.app"
        "/Applications/TIDAL.app"
        "/Applications/Slack.app"
        "/Applications/Telegram.app/"
        "/Applications/Signal.app/"
        "/Applications/WhatsApp.app/"
        "/Applications/Zen Browser.app"
        "/Applications/Firefox Developer Edition.app"
        "/Applications/kitty.app"
        "Applications/Thunderbird.app"
        "/Applications/Obsidian.app/"
        ];
    dock.autohide-time-modifier = 0.5;
    dock.autohide-delay = 0.0;
    dock.show-recents = false;
    dock.wvous-tl-corner = 2;        
    };
}
