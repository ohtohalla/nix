# My NixOS and Nix-Darwin confing

## macOS

### Install Nix

Run the following command

```bash
sh <(curl -L https://nixos.org/nix/install)
```

### Download the config

Use git to download the config

```bash
nix-shell -p git --run "git clone https://github.com/ohtohalla/nix.git ~/.config/nix"
```

### Install nix-darwin, home-manager and apply the config

```bash
darwin-rebuild switch --flake ~/.config/nix#home-macbook-pro
```

If installing a work system, use the command 

```bash
darwin-rebuild switch --flake ~/.config/nix#work-macbook-pro
```

