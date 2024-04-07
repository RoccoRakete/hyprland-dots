{ ... }:

{
  programs = {
    nixvim = {
      keymaps = [
        {
          key = "<leader>lf";
          action = ":Autoformat<CR>";
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
      ];
    };
  };
}
