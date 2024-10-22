# My NixOS and Nix-Darwin confing

## macOS
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
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
  sh -s -- install
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

