{ ... }:

{
  programs.nixvim.plugins.bufferline = {
    enable = true;
    mode = "buffers";
    diagnostics = "nvim_lsp";
    indicator.style = null;

    #separatorStyle = "slant";
    closeIcon = "󰅚";
    bufferCloseIcon = "󰅙";
    modifiedIcon = "󰀨";

    offsets = [
      {
        filetype = "neo-tree";
        text = "File Explorer";
        text_align = "center";
        separator = true;
      }
    ];

    highlights =
      {
        indicatorSelected.sp = "#89b4fa";
        #tabSeparatorSelected.underline = "#89b4fa";
      };

    #highlights = rec {
    #  # Tab bar fill
    #  fill.bg = "#21222a";
    #  fill.fg = "#5a5b64";

    #  # Tab fill
    #  background.fg = "#5a5b64";
    #  background.bg = "#000000";
    #  background.sp = fill.bg;

    # Tab separator
    #  separator = background // { fg = fill.bg; };
    #  separatorVisible = background // { fg = fill.bg; };

    #  # Path name
    #  duplicate = background // { fg = "#5a5b64"; };

    #  # buffer = { fg = "#5a5b64"; } // background;
    #  #modified = background // { fg = "#f38ba8"; };
    #  closeButton = background;

    # duplicate.bg = "#21222a";
    #pick.bg = "#89b4fa";
    #  hint.bg = "#000000";
    #error.bg = "#f38ba8";
    #warning.bg = "#eba0ac";
    #info.bg = "#f9e2af";
    # hint.bg = "#21222a";
    #  hintDiagnostic.bg = "#89b4fa";
    #  infoDiagnostic.bg = "#f9e2af";
    #  errorDiagnostic.bg = "#f38ba8";
    #  warningDiagnostic.bg = "#eba0ac";
    # numbers.bg = "#21222a";

    # icon = background;
    #  bufferSelected.fg = "#ecedfa";
    #  separatorSelected.fg = separator.fg;
    # separatorSelected.fg = "#000000";
    #  closeButtonSelected.fg = "#ecedfa";

    # nameVisible.fg = "#ecedfa";
    #  modifiedSelected.fg = "#f38ba8";
    #  modified.bg = "#000000";

    #  bufferVisible.fg = "#5a5b64";
    #  infoVisible.fg = "#eba0ac";
    #};
    diagnosticsIndicator = ''
      function(count, level)
        local icon = level:match("error") and " " or ""
        return " " .. icon .. count
      end
    '';
    #extraOptions = {
    #  highlights = {
    #    tab_separator_selected = {
    #      underline = "#89b4fa";
    #    };
    #  };
    #};
  };
}

