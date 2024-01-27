{ pkgs, lib, ... }:

{
  programs = {
    nixvim = {
      plugins = {
        lsp.servers.nixd.enable = true;
        lsp.servers.cssls.enable = true;
        lsp.servers.java-language-server.enable = true;
        lsp.servers.jsonls.enable = true;
        lsp.servers.lua-ls.enable = true;
        lsp.servers.pylsp.enable = true;
        lsp.servers.rust-analyzer.enable = true;
        rust-tools.enable = true;
        #lsp.servers.rust-analyzer.installCargo = true;
        #lsp.servers.rust-analyzer.installRustc = true;
        lsp.servers.tsserver.enable = true;
        lsp.servers.yamlls.enable = true;
      };
    };
  };
}
