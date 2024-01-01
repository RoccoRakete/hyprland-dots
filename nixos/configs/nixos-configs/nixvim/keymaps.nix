{ pkgs, lib, ... }:

{
  programs = {
    nixvim = {
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
