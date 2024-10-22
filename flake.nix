{
  description = "Ohto's Linux and macOS Nix Configuration";

  inputs = {
    determinate.url = "https://flakehub.com/f/DeterminateSystems/determinate/0.1";
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-24.05";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs-stable";    
    nix-homebrew = {
      url = "github:zhaofengli-wip/nix-homebrew";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
        url = "github:nix-community/nixvim";
        # If using a stable channel you can use `url = "github:nix-community/nixvim/nixos-<version>"`
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };



  outputs = inputs@{ determinate, nixpkgs-stable, home-manager, nixvim, self, nix-darwin, nixpkgs, nix-homebrew }:
  
  let
  
    configuration = { pkgs, config, ... }: {

    nixpkgs.config.allowUnfree = true;
    nixpkgs.overlays = [
    (_: prev: {
      # https://github.com/LnL7/nix-darwin/issues/1041
      inherit (inputs.nixpkgs-stable.legacyPackages.${prev.system}) karabiner-elements;
    })
    ];  

    };

    
  in
  {
nixosConfigurations = {
      seipi-666 = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          {
            imports = [ ./hosts/seipi-666/configuration.nix ];
            _module.args.self = self;
          }
          home-manager.nixosModules.home-manager
          {
            home-manager.sharedModules = [ nixvim.homeManagerModules.nixvim ];          
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";
            home-manager.users.juhokajava = {
              imports = [
                ./hosts/seipi-666/seipi-666-home.nix
              ];
              _module.args.self = self;
              _module.args.host = "seipi-666";
              _module.args.inputs = inputs;
            };
          }
        ];
      };
    };  
  
    darwinConfigurations = {
      home-macbook-pro = nix-darwin.lib.darwinSystem {
      modules = [
        ./hosts/home-macbook-pro/home-configuration.nix
        configuration
        nix-homebrew.darwinModules.nix-homebrew
        determinate.darwinModules.default
        {
          nix-homebrew = {
            enable = true;
            # Apple Silicon Only
            enableRosetta = true;
            # User owning the Homebrew prefix
            user = "juhokajava";         
            autoMigrate = true;
          };
        }
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.juhokajava = import ./hosts/home-macbook-pro/home-home.nix;
          home-manager.sharedModules = [ nixvim.homeManagerModules.nixvim ];

            # Optionally, use home-manager.extraSpecialArgs to pass
            # arguments to home.nix
        }
      ];
      };
      work-macbook-pro = nix-darwin.lib.darwinSystem {
      modules = [
        ./hosts/work-macbook-pro/work-configuration.nix
        configuration
        nix-homebrew.darwinModules.nix-homebrew
        determinate.darwinModules.default
        {
          nix-homebrew = {
            enable = true;
            # Apple Silicon Only
            enableRosetta = true;
            # User owning the Homebrew prefix
            user = "juhokajava";         
            autoMigrate = true;
          };
        }
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.juhokajava = import ./hosts/work-macbook-pro/work-home.nix;
          home-manager.sharedModules = [ nixvim.homeManagerModules.nixvim ];

            # Optionally, use home-manager.extraSpecialArgs to pass
            # arguments to home.nix
        }
      ];      
  };
    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."home-macbook-pro".pkgs;

  };
  };
}
