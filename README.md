# My NixOS and Nix-Darwin confing

## macOS

**First, grant the Terminal.app full disk access!!**

### Install Xcode

Run the following command

```bash

xcode-select --install

```

### Install Rosetta 2

Install Rosetta with the following command

```bash
softwareupdate --install-rosetta
```



### Install Nix

Run the following command

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install macos
```

After installation, in a new shell, run

```bash
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
```


### Download the config

Use git to download the config

In a new terminal session run the following command

```bash
nix-shell -p git --run "git clone https://github.com/ohtohalla/nix.git ~/.config/nix"
```

### Install nix-darwin, home-manager and apply the config

```bash
nix run nix-darwin --extra-experimental-features "nix-command flakes" -- switch --flake ~/.config/nix#home-macbook-pro
```

If installing a work system, use the command 

```bash
nix run nix-darwin --extra-experimental-features "nix-command flakes" -- switch --flake ~/.config/nix#work-macbook-pro
```

#### Addendum

For some reason the Determinate Installer does not always create the `org.nixos.darwin-store.plist`. In such a case, create said file in the path `/Library/LaunchDaemons/`. The file contents should be:

```xml

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>RunAtLoad</key>
  <true/>
  <key>Label</key>
  <string>org.nixos.darwin-store</string>
  <key>ProgramArguments</key>
  <array>
    <string>/usr/sbin/diskutil</string>
    <string>mount</string>
    <string>-mountPoint</string>
    <string>/nix</string>
    <string><UUID OF THE NIX STORE VOLUME></string>
  </array>
</dict>
</plist>

```

