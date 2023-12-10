{
  description = "Martin's Nix-Flakes Config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    ags.url = "github:Aylur/ags";
    #hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, home-manager, hyprland, ... }@inputs:
    let
      vars = import ./configs/variables.nix;
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {

      # system configurations

      # desktop
      nixosConfigurations = {
        ${vars.desktop} = lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            ./workstations/desktop/configuration-desktop.nix
          ];
        };

        # desktop
        ${vars.laptop} = lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            ./workstations/laptop/configuration-laptop.nix
          ];
        };
      };

      # home configurations

      # desktop
      homeConfigurations = {
        ${vars.desktop} = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = { inherit inputs; };
          inherit pkgs;
          modules = [
            ./workstations/desktop/home-desktop.nix
          ];
        };
      };

      # laptop
      homeConfigurations = {
        ${vars.laptop} = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = { inherit inputs; };
          inherit pkgs;
          modules = [
            ./workstations/laptop/home-laptop.nix
          ];
        };
      };
    };
}
