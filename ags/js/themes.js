/**
 * A Theme is a set of options that will be applied
 * ontop of the default values. see options.js for possible options
 */
import { Theme, WP, HOME } from './settings/theme.js';

export default [

  Theme({
    name: 'Adwaita Dark',
    icon: '󰊬 ',

    "workspaces": 10,

    "misc.pywal.theme": "base16-default",
    "misc.gtk.theme": "adw-gtk3-dark",
    "misc.gtkIcons.theme": "Adwaita",

    "desktop.wallpaper.img": WP + "waves_dark.jpg",
    "desktop.avatar": HOME + "face.png",

    "spacing": 2,
    "padding": 8,
    "radii": 5,
    "popover_padding_multiplier": 1.4,

    "color.red": "#c01c28",
    "color.green": "#2ec27e",
    "color.yellow": "#f5c211",
    "color.blue": "#3584e4",
    "color.magenta": "#813d9c",
    "color.teal": "#99c1f1",
    "color.orange": "#e66100",

    "theme.scheme": "dark",
    "theme.bg": "#1E1E1E",
    "theme.fg": "#deddda",
    "theme.accent.accent": "$blue",
    "theme.accent.fg": "$bg-color",
    "theme.accent.gradient": "to right, $accent, lighten($accent, 14%)",
    "theme.widget.bg": "$fg-color",
    "theme.widget.opacity": 94,

    "border.color": "$fg-color",
    "border.opacity": 100,
    "border.width": 0,
    "border.barcolor": "$accent",

    "hypr.inactive_border": "rgba(333333ff)",
    "hypr.wm_gaps": 3,

    "font.font": "Ubuntu Nerd Font",
    "font.mono": "Mononoki Nerd Font",
    "font.size": 13,

    "applauncher.width": 500,
    "applauncher.height": 400,
    "applauncher.icon_size": 40,

    "bar.position": "top",
    "bar.style": "floating",
    "bar.flat_buttons": true,
    "bar.separators": true,
    "bar.icon": "distro-icon",

    "battery.bar.width": 70,
    "battery.bar.height": 14,
    "battery.low": 15,
    "battery.medium": 35,

    "desktop.wallpaper.fg": "#fff",
    "desktop.drop_shadow": false,
    "desktop.shadow": "rgba(0, 0, 0, .6)",

    "notifications.black_list": [
      "Spotify"
    ],
    "notifications.position": [
      "top"
    ],
    "notifications.width": 450,
    "dashboard.sys_info_size": 70,
    "mpris.black_list": [
      "firefox"
    ],
    "mpris.preferred": "spotify",
  }),

  Theme({
    name: 'Gruvbox Dark',
    icon: ' ',

    "workspaces": 10,

    "misc.pywal.theme": "base16-gruvbox-hard",
    "misc.gtk.theme": "Gruvbox-Dark-B",
    "misc.gtkIcons.theme": "gruvbox_icons",

    "desktop.wallpaper.img": WP + "stairs.png",
    "desktop.avatar": HOME + "face.png",

    "spacing": 2,
    "padding": 8,
    "radii": 5,
    "popover_padding_multiplier": 1.4,

    "color.red": "#CC241D",
    "color.green": "#476C43",
    "color.yellow": "#D79921",
    "color.blue": "#458588",
    "color.magenta": "#B16286",
    "color.teal": "#689D6A",
    "color.orange": "#D65D0E",

    "theme.scheme": "dark",
    "theme.bg": "#1D2021",
    "theme.fg": "#FBF1C7",
    "theme.accent.accent": "$blue",
    "theme.accent.fg": "$bg-color",
    "theme.accent.gradient": "to right, $accent, lighten($accent, 14%)",
    "theme.widget.bg": "$fg-color",
    "theme.widget.opacity": 94,

    "border.color": "$fg-color",
    "border.opacity": 100,
    "border.width": 0,
    "border.barcolor": "$green",

    "hypr.inactive_border": "rgba(333333ff)",
    "hypr.wm_gaps": 3,

    "font.font": "Ubuntu Nerd Font",
    "font.mono": "Mononoki Nerd Font",
    "font.size": 13,

    "applauncher.width": 500,
    "applauncher.height": 400,
    "applauncher.icon_size": 32,

    "bar.position": "top",
    "bar.style": "floating",
    "bar.flat_buttons": true,
    "bar.separators": true,
    "bar.icon": "distro-icon",

    "battery.bar.width": 70,
    "battery.bar.height": 14,
    "battery.low": 15,
    "battery.medium": 35,

    "desktop.wallpaper.fg": "#fff",
    "desktop.drop_shadow": false,
    "desktop.shadow": "rgba(0, 0, 0, .6)",

    "notifications.black_list": [
      "Spotify"
    ],
    "notifications.position": [
      "top"
    ],
    "notifications.width": 450,
    "dashboard.sys_info_size": 70,
    "mpris.black_list": [
      "Caprine"
    ],
    "mpris.preferred": "spotify",
  }),

 Theme({
    name: 'Catppuccin Mocha',
    icon: '󰄛 ',

    "workspaces": 10,

    "misc.pywal.theme": "base16-seti",
    "misc.gtk.theme": "Catppuccin_Mocha",
    "misc.gtkIcons.theme": "catppuccin_mocha",

    "desktop.wallpaper.img": WP + "oled-mountains.jpg",
    "desktop.avatar": HOME + "face.png",

    "spacing": 2,
    "padding": 8,
    "radii": 5,
    "popover_padding_multiplier": 1.4,

    "color.red": "#F38BA8",
    "color.green": "#A6E3A1",
    "color.yellow": "#F9E2AF",
    "color.blue": "#89B4FA",
    "color.magenta": "#CBA6F7",
    "color.teal": "#94E2D5",
    "color.orange": "#FAB387",

    "theme.scheme": "dark",
    "theme.bg": "#181825",
    "theme.fg": "#CDD6F4",
    "theme.accent.accent": "$teal",
    "theme.accent.fg": "$bg-color",
    "theme.accent.gradient": "to right, $accent, lighten($accent, 14%)",
    "theme.widget.bg": "$fg-color",
    "theme.widget.opacity": 94,

    "border.color": "$fg-color",
    "border.opacity": 100,
    "border.width": 0,
    "border.barcolor": "$accent",

    "hypr.inactive_border": "rgba(333333ff)",
    "hypr.wm_gaps": 3,

    "font.font": "Ubuntu Nerd Font",
    "font.mono": "Mononoki Nerd Font",
    "font.size": 13,

    "applauncher.width": 500,
    "applauncher.height": 400,
    "applauncher.icon_size": 32,

    "bar.position": "top",
    "bar.style": "floating",
    "bar.flat_buttons": true,
    "bar.separators": true,
    "bar.icon": "distro-icon",

    "battery.bar.width": 70,
    "battery.bar.height": 14,
    "battery.low": 15,
    "battery.medium": 35,

    "desktop.wallpaper.fg": "#fff",
    "desktop.drop_shadow": false,
    "desktop.shadow": "rgba(0, 0, 0, .6)",

    "notifications.black_list": [
      "Spotify"
    ],
    "notifications.position": [
      "top"
    ],
    "notifications.width": 450,
    "dashboard.sys_info_size": 70,
    "mpris.black_list": [
      "Caprine"
    ],
    "mpris.preferred": "spotify",
  }),

Theme({
    name: 'Rosé Pine',
    icon: '󰐅 ',

    "workspaces": 10,

    "misc.pywal.theme": "base16-default",
    "misc.gtk.theme": "rose-pine-gtk",
    "misc.gtkIcons.theme": "rose-pine-icons",

    "desktop.wallpaper.img": WP + "leafy-moon.png",
    "desktop.avatar": HOME + "face.png",

    "spacing": 2,
    "padding": 8,
    "radii": 5,
    "popover_padding_multiplier": 1.4,

    "color.red": "#eb6f92",
    "color.green": "#9ccfd8",
    "color.yellow": "#f6c177",
    "color.blue": "#3e8fb0",
    "color.magenta": "#c4a7e7",
    "color.teal": "#31748f",
    "color.orange": "#ebbcba",

    "theme.scheme": "dark",
    "theme.bg": "#191724",
    "theme.fg": "#e0def4",
    "theme.accent.accent": "$teal",
    "theme.accent.fg": "$bg-color",
    "theme.accent.gradient": "to right, $accent, lighten($accent, 14%)",
    "theme.widget.bg": "$fg-color",
    "theme.widget.opacity": 94,

    "border.color": "$fg-color",
    "border.opacity": 100,
    "border.width": 0,
    "border.barcolor": "$accent",

    "hypr.inactive_border": "rgba(333333ff)",
    "hypr.wm_gaps": 3,

    "font.font": "Ubuntu Nerd Font",
    "font.mono": "Mononoki Nerd Font",
    "font.size": 13,

    "applauncher.width": 500,
    "applauncher.height": 400,
    "applauncher.icon_size": 32,

    "bar.position": "top",
    "bar.style": "floating",
    "bar.flat_buttons": true,
    "bar.separators": true,
    "bar.icon": "distro-icon",

    "battery.bar.width": 70,
    "battery.bar.height": 14,
    "battery.low": 15,
    "battery.medium": 35,

    "desktop.wallpaper.fg": "#fff",
    "desktop.drop_shadow": false,
    "desktop.shadow": "rgba(0, 0, 0, .6)",

    "notifications.black_list": [
      "Spotify"
    ],
    "notifications.position": [
      "top"
    ],
    "notifications.width": 450,
    "dashboard.sys_info_size": 70,
    "mpris.black_list": [
      "Caprine"
    ],
    "mpris.preferred": "spotify",
  }),



];


