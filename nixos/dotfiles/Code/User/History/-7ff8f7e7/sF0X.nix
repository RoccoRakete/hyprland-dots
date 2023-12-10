{
  inputs = {
    ags.url = "github:Aylur/ags";
  };

  outputs = { self, nixpkgs, ... }@attrs: {
    nixosConfigurations.OptiPlex3060 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = attrs;
      modules = [ ./configuration.nix ];
    };
  };
}
