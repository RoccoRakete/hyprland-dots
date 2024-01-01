{
  description = "Martin's Nix-Flakes Config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    ags.url = "github:Aylur/ags";
    hyprland.url = "github:hyprwm/Hyprland";
    nix-software-center.url = "github:snowfallorg/nix-software-center";
    nixos-conf-editor.url = "github:snowfallorg/nixos-conf-editor";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    more-waita = {
      url = "github:somepaulo/MoreWaita";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, home-manager, hyprland, nixvim, ... }@inputs:
    let
      vars = import ./variables.nix;
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
            ./hosts/desktop/configuration-desktop.nix
            inputs.nixvim.nixosModules.nixvim
          ];
        };

        # laptop
        ${vars.laptop} = lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/laptop/configuration-laptop.nix
            inputs.nixvim.nixosModules.nixvim
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
            ./hosts/desktop/home-desktop.nix
          ];
        };
      };

      # laptop
      homeConfigurations = {
        ${vars.laptop} = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = { inherit inputs; };
          inherit pkgs;
          modules = [
            ./hosts/laptop/home-laptop.nix
          ];
        };
      };
    };
}
