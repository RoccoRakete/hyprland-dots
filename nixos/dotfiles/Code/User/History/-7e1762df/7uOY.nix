{
  description = "Martin's Nix-Flakes Config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    ags.url = "github:Aylur/ags";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      vars = import ./configs/variables.nix;
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        ${vars.desktop} = lib.nixosSystem {
          inherit system;
          modules = [
            ./workstations/desktop/configuration-desktop.nix
          ];
        };
        ${vars.laptop} = lib.nixosSystem {
          inherit system;
          modules = [
            ./workstations/laptop/configuration-laptop.nix
          ];
        };
      };
      homeConfigurations = {
        ${vars.desktop} = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = { inherit inputs; };
          inherit pkgs;
          modules = [
            ./home.nix
          ];
        };
      };
      homeConfigurations = {
        ${vars.laptop} = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = { inherit inputs; };
          inherit pkgs;
          modules = [
            ./home.nix
          ];
        };
      };
    };
}
