{
  # in flake.nix
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # add ags
    ags.url = "github:Aylur/ags";
  };

  outputs = { home-manager, nixpkgs, ... }@inputs:
    {
      nixosConfigurations = {
        "Dell" = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

          # pass inputs as specialArgs
          extraSpecialArgs = { inherit inputs; };

          # import your home.nix
          modules = [ ];
        };
      };
    };
}
