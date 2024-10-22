# My NixOS and Nix-Darwin confing

## macOS
### Install Xcode

Run the following command

```bash

xcode-select --install

```


### Install Nix

Run the following command

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
  sh -s -- install
```

### Download the config

Use git to download the config

```bash
nix run nix-darwin --extra-experimental-features "nix-command flakes" -- switch --flake ~/.config/nix#home-macbook-pro
```

### Install nix-darwin, home-manager and apply the config

```bash
nix run nix-darwin --extra-experimental-features "nix-command flakes" -- switch --flake ~/.config/nix#work-macbook-pro
```

If installing a work system, use the command 

```bash
darwin-rebuild switch --flake ~/.config/nix#work-macbook-pro
```

