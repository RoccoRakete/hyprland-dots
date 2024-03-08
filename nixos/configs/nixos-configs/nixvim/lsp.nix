{ ... }:

{
  programs.nixvim.plugins.lsp = {
    enable = true;
    #keymaps.lspBuf = {
    #  "<leader>fm" = "format";
    #};
  };
}
