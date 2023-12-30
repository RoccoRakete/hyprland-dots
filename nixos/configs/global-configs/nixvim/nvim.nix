{ pkgs, lib, ... }:

{
  imports = [
    ./keymaps.nix
    ./nvim-cmp.nix
    ./lsp.nix
    ./bufferline.nix
    ./telescope.nix
    ./neo-tree.nix
  ];
  programs = {
    nixvim = {
      enable = true;
      globals.mapleader = " ";

      options = {
        number = true;
        relativenumber = false;
        shiftwidth = 2;
      };
      plugins = {
        nix.enable = true;

        lsp.servers.nixd.enable = true;
        lsp.servers.cssls.enable = true;
        lsp.servers.java-language-server.enable = true;
        lsp.servers.jsonls.enable = true;
        lsp.servers.lua-ls.enable = true;
        lsp.servers.pylsp.enable = true;
        lsp.servers.rust-analyzer.enable = true;
        lsp.servers.rust-analyzer.installCargo = true;
        lsp.servers.rust-analyzer.installRustc = true;
        lsp.servers.tsserver.enable = true;
        lsp.servers.yamlls.enable = true;

        lsp-lines.enable = true;
        lsp-format.enable = true;
        lspkind.enable = true;

        neogit.enable = true;
        cmp-zsh.enable = true;
        noice.enable = true;

        airline = {
          enable = true;
        };
      };

      extraPlugins = with pkgs.vimPlugins; [
        telescope-ui-select-nvim
      ];

      extraConfigLua = "";

      colorschemes.catppuccin = {
        enable = true;
        flavour = "frappe";
        transparentBackground = true;
      };

    };
  };
}
