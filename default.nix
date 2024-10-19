{ pkgs, config, ... }: {

    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search by name, run:
    # $ nix-env -qaP | grep wget
    environment.systemPackages = with pkgs; [
        kitty
        mkalias
        stylix
        
    ];    

    fonts.packages = [
    (pkgs.nerdfonts.override { fonts = [ "Iosevka" ]; })
    ];
}
