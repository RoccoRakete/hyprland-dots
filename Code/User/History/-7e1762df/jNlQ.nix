{
  description = "My first flake!";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.05";
    home-manager.url = "github:nix-community/home-manager/release-23.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        ThinkPad = lib.nixosSystem
          {
            inherit system;
            modules = [ ./configuration.nix ];
          }
          };
        homeConfigurations = {
          martin = home-manager.lib.homeManagerConfiguration
            {
              inherit pkgs;
              modules = [ ./home.nix ];
            };
        };
      };
    }
