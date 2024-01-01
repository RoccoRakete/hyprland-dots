{ pkgs, lib, ... }:

{
  imports = [
    ./keymaps.nix
    ./nvim-cmp.nix
    ./lsp.nix
    ./bufferline.nix
    #./telescope.nix
    ./neo-tree.nix
    ./prettier.nix
    ./lsp-servers.nix
    ./treesitter.nix
    ./autopairs.nix
  ];
  programs = {
    nixvim = {
      enable = true;
      globals.mapleader = " ";
      clipboard.providers.wl-copy.enable = true;

      options = {
        number = true;
        relativenumber = false;
        shiftwidth = 2;
      };
      plugins = {
        nix.enable = true;

        lsp-lines.enable = true;
        lsp-format.enable = true;
        lspkind.enable = true;

        neogit.enable = true;
        cmp-zsh.enable = true;
        noice.enable = true;
        nvim-colorizer.enable = true;
        luasnip.enable = true;
        notify = {
          enable = true;
          backgroundColour = "#000000";
        };

        airline = {
          enable = true;
          powerline = true;
          #theme = "bubblegum";
        };
      };

      extraPlugins = with pkgs.vimPlugins; [
        telescope-ui-select-nvim
      ];

      extraConfigLua = "";

      #colorschemes.kanagawa = {
      #  enable = true;
      #  terminalColors = true;
      #};

      #colorschemes.ayu = {
      #  enable = true;
      #  mirage = true;
      #};

      colorschemes.catppuccin = {
        enable = true;
        flavour = "mocha";
        transparentBackground = true;
      };

    };
  };
}

