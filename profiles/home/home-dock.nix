{pkgs, config, ...}: {
    system.defaults = {
    dock.autohide  = true;
    dock.persistent-apps = [
        "/Applications/Telegram.app"
        "/Applications/Signal.app"
        "/Applications/Whatsapp.app"
        "${pkgs.kitty}/Applications/kitty.app"
        "/Applications/Firefox Developer Edition.app"
        "/Applications/Obsidian.app"
        "/System/Applications/Mail.app"
        "/System/Applications/Calendar.app"
        ];
    dock.autohide-time-modifier = 0.5;
    dock.autohide-delay = 0.0;
    dock.show-recents = false;
    dock.wvous-tl-corner = 2;        
    };
}