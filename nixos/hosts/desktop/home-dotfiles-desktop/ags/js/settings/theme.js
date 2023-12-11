import options from '../options.js';
import themes from '../themes.js';
import { reloadScss } from './scss.js';
import { setupHyprland } from './hyprland.js';
import { wallpaper } from './wallpaper.js';
import { gtkIcons, gtkTheme, pywal } from './setup.js';
import GLib from 'gi://GLib';


/** @param {string} name */
export function setTheme(name) {
    options.reset();
    const theme = themes.find(t => t.name === name);
    if (!theme)
        return print('No theme named ' + name);

    options.apply(theme.options);
    reloadScss();
    setupHyprland();
    wallpaper();
    pywal();
    gtkIcons();
    gtkTheme();
}

export const WP = GLib.get_home_dir() + '/.config/backgrounds/';
export const HOME = GLib.get_home_dir() + '/';

export const lightColors = {
    'theme.scheme': 'light',
    'color.red': '#e55f86',
    'color.green': '#00D787',
    'color.yellow': '#EBFF71',
    'color.blue': '#51a4e7',
    'color.magenta': '#9077e7',
    'color.teal': '#51e6e6',
    'color.orange': '#E79E64',
    'theme.bg': '#fffffa',
    'theme.fg': '#141414',
};

export const Theme = ({ name, icon = ' ', ...options }) => ({
    name,
    icon,
    options: {
        'theme.name': name,
        'theme.icon': icon,
        ...options,
    },
});

let settingsDialog;
export async function openSettings() {
    if (settingsDialog)
        return settingsDialog.present();

    try {
        settingsDialog = (await import('./SettingsDialog.js')).default;
        settingsDialog.present();
    } catch (error) {
        if (error instanceof Error)
            console.error(error.message);
    }
}
