{
  # in flake.nix
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # add ags
    ags.url = "github:Aylur/ags";
  };

  outputs = {nixpkgs, ...}@inputs:
  let
    system = "x86_64-linux";
  in
    {
    nixosConfigurations."OptiPlex3060" = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs system; };
      modules = [ /etc/nixos/configuration.nix ];
    };
      
      # pass inputs as specialArgs
      extraSpecialArgs = { inherit inputs; };

      # import your home.nix
      modules = [ ./home.nix];
    };
  }
