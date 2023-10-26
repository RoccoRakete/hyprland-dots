local wezterm                    = require      'wezterm'
local config                     = {}
config.font                      = wezterm.font 'Hurmit Nerd Font'
config.font_size                 = 16
config.window_background_opacity = 1
config.use_fancy_tab_bar         = false
config.warn_about_missing_glyphs = false 
return config
