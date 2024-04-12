{ ... }:

{
  programs = {
    nixvim = {
      keymaps = [
        {
          key = "<leader>lf";
          action = "<cmd>lua require('conform').format({ lsp_fallback = true, async = false, timeout_ms = 500 })<CR>";

          options = {
            silent = true;
          };
        }
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
          key = "<leader>w";
          action = "<CMD>WhichKey<NL>";
        }

        {
          key = "<Tab>";
          action = "<CMD>:bnext<NL>";
        }

        {
          key = "<leader>c";
          action = "<CMD>:bp | bd #<NL>";
        }
        {
          key = "<leader>c";
          action = "<CMD>:bp | bd #<NL>";
        }
      ];
    };
  };
}
