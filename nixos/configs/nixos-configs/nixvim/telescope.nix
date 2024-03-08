{ ... }:

{
  programs.nixvim.plugins.telescope = {
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
}
