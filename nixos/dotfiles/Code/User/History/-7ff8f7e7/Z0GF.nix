{
  description = "Home Manager and NixOS configuration of Aylur";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ags.url = "github:Aylur/ags";
  };

  outputs = { home-manager, nixpkgs, ... }@inputs:
    let
      username = "martin";
      system = "x86_64-linux";
    in
    {
      nixosConfigurations."OptiPlex3060" = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs username system; };
        modules = [ /etc/nixos/configuration.nix ];
      };

      homeConfigurations."${username}" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        extraSpecialArgs = { inherit inputs username; };
        modules = [ /home/martin/.config/nixos/home.nix ];
      };
    };
}
