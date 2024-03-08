{ ... }:

{
  programs = {
    nixvim = {
      keymaps = [
        {
          key = "<leader>fm";
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
          key = "<Tab>";
          action = "<CMD>:bnext<NL>";
        }

        {
          key = "<leader>x";
          action = "<CMD>:bp | bd #<NL>";
        }
      ];
    };
  };
}
