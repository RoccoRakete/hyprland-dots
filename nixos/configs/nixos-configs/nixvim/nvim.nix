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
          fps = 120;
          stages = "fade";
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

      extraConfigLua =
        ''if vim.g.neovide then'' + "\n" +
        ''vim.o.guifont = "Hurmit Nerd Font:h14"'' + "\n" +
        ''vim.api.nvim_set_hl(0, 'Normal', {bg = '#1e1e1e'})'' + "\n" +

        ''vim.keymap.set('n', '<C-S-s>', ':w<CR>') -- Save'' + "\n" +
        ''vim.keymap.set('v', '<C-S-c>', '"+y') -- Copy'' + "\n" +
        ''vim.keymap.set('n', '<C-S-v>', '"+P') -- Paste normal mode'' + "\n" +
        ''vim.keymap.set('v', '<C-S-v>', '"+P') -- Paste visual mode'' + "\n" +
        ''vim.keymap.set('c', '<C-S-v>', '<C-R>+') -- Paste command mode'' + "\n" +
        ''vim.keymap.set('i', '<C-S-v>', '<ESC>l"+Pli') -- Paste insert mode'' + "\n" +
        "end";


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

