{ ... }:

{
  programs.nixvim.plugins.telescope = {
    enable = true;

    enabledExtensions = [ "ui-select" ];
    extensions.ui-select.enable = true;
    extensions.frecency.enable = false;
    extensions.fzf-native.enable = true;

    extensions.file-browser = {
      enable = true;
      settings.hidden = true;
      settings.depth = 9999999999;
      settings.auto_depth = true;
    };
    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>fs" = "grep_string";
      "<leader>fg" = "live_grep";
    };
    settings = {
      pickers = {
        find_files = {
          hidden = true;
        };
      };
    };
  };
}
