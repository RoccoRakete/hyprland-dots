import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import icons from '../../icons.js';
import PowerMenu from '../../services/powermenu.js';
import Avatar from '../../misc/Avatar.js';
import { uptime } from '../../variables.js';
import options from '../../options.js';
import { openSettings } from '../../settings/theme.js';
import { execAsync } from 'resource:///com/github/Aylur/ags/utils.js';



export default () => Widget.Box({
    class_name: 'header horizontal',
    children: [
        Avatar(),
        Widget.Box({
            class_name: 'system-box',
            vertical: true,
            hexpand: true,
            children: [
                Widget.Box({
                    children: [
                        Widget.Button({
                            vpack: 'center',
                            on_clicked: openSettings,
                            child: Widget.Icon(icons.ui.settings),
                        }),
                        Widget.Label({
                            class_name: 'uptime',
                            hexpand: true,
                            vpack: 'center',
                            connections: [[uptime, label => {
                                label.label = `uptime: ${uptime.value}`;
                            }]],
                        }),
                        Widget.Button({
                            vpack: 'center',
                            on_clicked: () => execAsync('gtklock'),
                            child: Widget.Icon(icons.lock),
                        }),
                        Widget.Button({
                            vpack: 'center',
                            on_clicked: () => PowerMenu.action('shutdown'),
                            child: Widget.Icon(icons.powermenu.shutdown),
                        }),
                    ],
                }),
            ],
        }),
    ],
});
