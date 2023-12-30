{ pkgs, lib, ... }:

{
  programs.nixvim.plugins.bufferline = {
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
}

