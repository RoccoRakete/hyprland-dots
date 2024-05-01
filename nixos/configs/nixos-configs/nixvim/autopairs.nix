{ ... }:

{
  programs.nixvim.plugins.nvim-autopairs = {
    enable = true;
    settings = {
      checkTs = true;
    };
  };
}
