{ ... }:

{
  programs.nixvim.plugins.lsp-format = {
    enable = false; 
    lspServersToEnable = [
      "nixd"
      "efm"
    ];
  };
}
