{ pkgs, lib, ... }:

{
  programs = {
    nixvim = {
      enable = true;
      globals.mapleader = " ";

      keymaps = [
        {
          key = ".";
          action = ":";
        }

        {
          key = "<leader>bb";
          action = "<CMD>Telescope file_browser<NL>";
        }

        {
          key = "<leader>t";
          action = "<CMD>Neotree<NL>";
        }

        {
          key = "<Tab>";
          action = "<CMD>:bNext<NL>";
        }

        {
          key = "<leader>x";
          action = "<CMD>:bdelete!<NL>";
        }
      ];

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

        nvim-cmp = {
          enable = true;
          sources =
            [
              { name = "nvim_lsp"; }
              { name = "path"; }
              { name = "buffer"; }
            ];

          mapping = {
            "<CR>" = "cmp.mapping.confirm({ select = true })";
            "<Tab>" = {
              action = ''
                function(fallback)
                  if cmp.visible() then
                    cmp.select_next_item()
                  elseif check_backspace() then
                    fallback()
                  else
                    fallback()
                  end
                end
              '';
              modes = [
                "i"
                "s"
              ];
            };
          };
        };

        lsp = {
          enable = true;
          keymaps.lspBuf = {
            "<leader>fm" = "format";
          };
        };

        airline = {
          enable = true;
        };

        bufferline = {
          enable = true;
          mode = "buffers";
          diagnostics = "nvim_lsp";

          #separatorStyle = "slant";
          closeIcon = "󰅚";
          bufferCloseIcon = "󰅙";
          modifiedIcon = "󰀨";

          highlights = rec {
            # Tab bar fill
            fill.bg = "#21222a";
            fill.fg = "#5a5b64";

            # Tab fill
            background.fg = "#5a5b64";
            background.bg = "#000000";
            background.sp = fill.bg;

            # Tab separator
            separator = background // { fg = fill.bg; };
            separatorVisible = background // { fg = fill.bg; };

            # Path name
            duplicate = background // { fg = "#5a5b64"; };

            # buffer = { fg = "#5a5b64"; } // background;
            modified = background // { fg = "#5e3828"; };
            closeButton = background;

            # duplicate.bg = "#21222a";
            pick.bg = "#212fff";
            hint.bg = "#212fff";
            # error.bg = "#21222a";
            # warning.bg = "#21222a";
            # info.bg = "#21222a";
            # hint.bg = "#21222a";
            # hintDiagnostic.bg = "#21222a";
            # infoDiagnostic.bg = "#21222a";
            # errorDiagnostic.bg = "#21222a";
            # warningDiagnostic.bg = "#21222a";
            # numbers.bg = "#21222a";

            # icon = background;
            bufferSelected.fg = "#ecedfa";
            separatorSelected.fg = separator.fg;
            # separatorSelected.fg = "#000000";
            closeButtonSelected.fg = "#ecedfa";

            # nameVisible.fg = "#ecedfa";
            modifiedSelected.fg = "#ef4030";

            bufferVisible.fg = "#5a5b64";
            infoVisible.fg = "#5a5b64";
          };
          diagnosticsIndicator = ''
            function(count, level)
              local icon = level:match("error") and " " or ""
              return " " .. icon .. count
            end
          '';
        };

        telescope = {
          enable = true;

          enabledExtensions = [ "ui-select" ];
          extensionConfig.ui-select = { };
          extensions.frecency.enable = true;
          extensions.fzf-native.enable = true;

          extensions.file_browser = {
            enable = true;
            hidden = true;
            depth = 9999999999;
            autoDepth = true;
          };
          keymaps = {
            "<leader>ff" = "find_files";
            "<leader>fs" = "grep_string";
            "<leader>fg" = "live_grep";
          };
        };

        neo-tree = {
          enable = true;
          filesystem = {
            filteredItems = {
              hideHidden = false;
              hideDotfiles = false;
              forceVisibleInEmptyFolder = true;
              hideGitignored = false;

            };
          };
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
