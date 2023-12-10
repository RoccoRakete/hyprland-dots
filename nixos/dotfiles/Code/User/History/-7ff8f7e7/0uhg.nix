{
  description = "flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    ags.url = "github:Aylur/ags";
  };

  outputs = { nixpkgs, ... }@inputs:
    let
      username = "martin";
      system = "x86_64-linux";
    in
    {
    nixosConfigurations.OptiPlex3060 = nixpkgs.lib.nixosSystem {
              specialArgs = { inherit inputs username system; };
        modules = [ /etc/nixos/configuration.nix ];
      };
        extraSpecialArgs = { inherit inputs username; };
        modules = [ /home/martin/.config/nixos/home.nix ];
      };
    }
