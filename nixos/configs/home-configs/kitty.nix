{ ... }:

{
  programs.kitty = {
    enable = true;
    theme = "Catppuccin-Mocha";
    settings = {
      font_family = "Hurmit Nerd Font";
      font_size = "14.0";
      #background = "#1E1E1E";
      #foreground = "#DEDDDA";
      #tab_bar_background = "#1E1E1E";
      scrollback_lines = 10000;
      show_hyperlink_targets = "yes";
      focus_follows_mouse = "no";
      enable_audio_bell = false;
      tab_bar_min_tabs = 1;
      tab_bar_edge = "bottom";
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";
      url_style = "none";
      underline_hyperlinks = "never";
    };
    extraConfig =
      "modify_font underline_position 3" + "\n" +
      "modify_font underline_thickness 300%" + "\n" +
      "modify_font strikethrough_position 2px";
  };
}
