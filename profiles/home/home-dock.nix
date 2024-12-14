{pkgs, config, ...}: {
    system.defaults = {
    dock.autohide  = true;
    dock.persistent-apps = [
        "/Applications/TIDAL.app"
        "/Applications/Qobuz.app/"
        "/Applications/Telegram.app"
        "/Applications/Signal.app"
        "/Applications/Whatsapp.app"
        "/Applications/kitty.app"
        "/Applications/Zen Browser.app/"
        "/Applications/Firefox Developer Edition.app"
        "/Applications/Thunderbird.app"
        "/Applications/Obsidian.app"
        "/Applications/Ableton Live 10 Suite.app"
        "/Applications/TouchDesigner.app"
        "/Applications/Anki.app"
        "/Applications/Boop.app"
        "/Applications/Mullvad VPN.app"
        
        ];
    dock.autohide-time-modifier = 0.5;
    dock.autohide-delay = 0.0;
    dock.show-recents = false;
    dock.wvous-tl-corner = 2;        
    };
}
