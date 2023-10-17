const misc = {
    wm_gaps: 5,
    radii: 10,
    spacing: 9,
    shadow: 'rgba(0, 0, 0, 0)',
    drop_shadow: false,
    transition: 200,
    screen_corners: false,
    bar_style: 'floating',
    layout: 'topbar',
    desktop_clock: 'center center',
    font: 'Ubuntu Nerd Font',
    mono_font: 'Mononoki Nerd Font',
    font_size: 19,
};

const gruv_dark = {
    color_scheme: 'gruv_dark',
    red: '#CC241D',
    green: '#98971A',
    yellow: '#D79921',
    blue: '#458588',
    magenta: '#B16286',
    teal: '#689D6A',
    orange: '#D65D0E',
    bg_color: '#1D2021',
    fg_color: '#FBF1C7',
    hover_fg: '#f1f1f1',
};

const pico = {
    color_scheme: 'pico',
    red: '#FF004D',
    green: '#00E756',
    yellow: '#FFF024',
    blue: '#29ADFF',
    magenta: '#FF77A8',
    teal: '#83769C',
    orange: '#D08770',
    bg_color: '#000000',
    fg_color: '#FFF1E8',
    hover_fg: '#FFF1E8',
};

const catppuccin_mocha = {
    color_scheme: 'catppuccin_mocha',
    red: '#F38BA8',
    green: '#A6E3A1',
    yellow: '#F9E2AF',
    blue: '#89B4FA',
    magenta: '#CBA6F7',
    teal: '#94E2D5',
    orange: '#FAB387',
    bg_color: '#181825',
    fg_color: '#CDD6F4',
    hover_fg: '#CDD6F4',
};

const material_dark = {
    color_scheme: 'material_dark',
    red: '#F07178',
    green: '#C3E88D',
    yellow: '#FFCB6B',
    blue: '#82AAFF',
    magenta: '#C792EA',
    teal: '#89DDFF',
    orange: '#D65D0E',
    bg_color: '#212121',
    fg_color: '#EEFFFF',
    hover_fg: '#EEFFFF',
};

const nord = {
    color_scheme: 'nord',
    red: '#BF616A',
    green: '#A3BE8C',
    yellow: '#EBCB8B',
    blue: '#5E81AC',
    magenta: '#88C0D0',
    teal: '#8FBCBB',
    orange: '#D08770',
    bg_color: '#272b35',
    fg_color: '#E5E9F0',
    hover_fg: '#E5E9F0',
};

const light = {
    color_scheme: 'light',
    red: '#f66151',
    green: '#57e389',
    yellow: '#f6d32d',
    blue: '#fff',
    magenta: '#c061cb',
    teal: '#5bc8aF',
    orange: '#ffa348',
    bg_color: '#fffffa',
    fg_color: '#141414',
    hover_fg: '#0a0a0a',
    border_color: '#476C43',
};

const colors_gruv_dark = {
    wallpaper_fg: 'white',
    hypr_active_border: 'rgba(476C43FF)',
    hypr_inactive_border: 'rgba(3f3f3fDD)',
    accent: '$blue',
    accent_fg: '#282828',
    widget_bg: '$fg_color',
    widget_opacity: 94,
    active_gradient: 'to right, $accent, lighten($accent, 25%)',
    border_color: '#476C43',
    bar_border_color: '#476C43',
    border_opacity: 100,
    border_width: 2,
};

const colors_pico = {
    wallpaper_fg: 'white',
    hypr_active_border: 'rgba(29ADFFFF)',
    hypr_inactive_border: 'rgba(545862DD)',
    accent: '$teal',
    accent_fg: '#282828',
    widget_bg: '$fg_color',
    widget_opacity: 94,
    active_gradient: 'to right, $accent, lighten($accent, 25%)',
    border_color: '#29ADFF',
    bar_border_color: '#29ADFF',
    border_opacity: 100,
    border_width: 2,
};

const colors_catppuccin_mocha = {
    wallpaper_fg: 'white',
    hypr_active_border: 'rgba(CBA6F7FF)',
    hypr_inactive_border: 'rgba(1E1E2EDD)',
    accent: '$teal',
    accent_fg: '#282828',
    widget_bg: '$fg_color',
    widget_opacity: 94,
    active_gradient: 'to right, $accent, lighten($accent, 25%)',
    border_color: '#B4BEFE',
    bar_border_color: '#B4BEFE',
    border_opacity: 100,
    border_width: 2,
};

const colors_material_dark = {
    wallpaper_fg: 'white',
    hypr_active_border: 'rgba(C792EAFF)',
    hypr_inactive_border: 'rgba(4A4A4ADD)',
    accent: '$blue',
    accent_fg: '#282828',
    widget_bg: '$fg_color',
    widget_opacity: 94,
    active_gradient: 'to right, $accent, lighten($accent, 25%)',
    border_color: '#C792EA',
    bar_border_color: '#C792EA',
    border_opacity: 100,
    border_width: 2,
};

const colors_nord = {
    wallpaper_fg: 'white',
    hypr_active_border: 'rgba(5E81ACFF)',
    hypr_inactive_border: 'rgba(4C566ADD)',
    accent: '$green',
    accent_fg: '#282828',
    widget_bg: '$fg_color',
    widget_opacity: 94,
    active_gradient: 'to right, $accent, lighten($accent, 25%)',
    border_color: '#5E81AC',
    bar_border_color: '#5E81AC',
    border_opacity: 100,
    border_width: 2,
}

// themes
const gruvbox_dark_theme = {
    avatar: '~/face.png',
    name: 'gruvbox_dark_theme',
    icon: '󰄛',
    gtk_theme: 'Gruvbox-Dark-B',
    icons: 'gruvbox_icons',
    pywall_theme: 'base16-gruvbox-hard',
    theme_wallpaper: 'stairs.png',
    ...gruv_dark,
    ...misc,
    ...colors_gruv_dark,
};

const pico_theme = {
    avatar: '~/face.png',
    name: 'pico_theme',
    icon: '󰄛',
    gtk_theme: 'Juno-ocean',
    icons: 'pico_icons',
    pywall_theme: 'base16-seti',
    theme_wallpaper: 'color_city.png',
    ...pico,
    ...misc,
    ...colors_pico,
};

const catppuccin_mocha_theme = {
    avatar: '~/face.png',
    name: 'catppuccin_mocha_theme',
    icon: '󰄛',
    gtk_theme: 'Catppuccin-Mocha-Standard-Lavender-Dark',
    icons: 'catppuccin_mocha',
    pywall_theme: 'base16-seti',
    theme_wallpaper: 'oled-mountains.jpg',
    ...catppuccin_mocha,
    ...misc,
    ...colors_catppuccin_mocha,
};

const material_dark_theme = {
    avatar: '~/face.png',
    name: 'material_dark_theme',
    icon: '󰄛',
    gtk_theme: 'Material',
    icons: 'material',
    pywall_theme: 'base16-materialer',
    theme_wallpaper: 'japanese-sakura-painting.jpg',
    ...material_dark,
    ...misc,
    ...colors_material_dark,
};

const nord_theme = {
    avatar: '~/face.png',
    name: 'nord_theme',
    icon: '󰄛',
    gtk_theme: 'nord',
    icons: 'nord_icons',
    pywall_theme: 'base16-nord',
    theme_wallpaper: 'nord.jpg',
    ...nord,
    ...misc,
    ...colors_nord,
};

export default [
    gruvbox_dark_theme,
    pico_theme,
    catppuccin_mocha_theme,
    material_dark_theme,
    nord_theme,
];
