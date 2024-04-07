{ ... }:

{
  programs.nixvim.plugins.efmls-configs = {
    enable = false;
    setup.nix.formatter = "nixfmt";
    setup.scss.formatter = "prettier";
  };
}
