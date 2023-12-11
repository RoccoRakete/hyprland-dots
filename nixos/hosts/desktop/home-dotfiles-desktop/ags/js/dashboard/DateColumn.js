import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import Clock from '../misc/Clock.js';
import * as vars from '../variables.js';


export default () => Widget.Box({
    vertical: true,
    class_name: 'datemenu vertical',
    children: [
        Widget.Box({
            class_name: 'clock-box',
            vertical: true,
            children: [
                Clock({ format: '%H:%M' }),
                Widget.Label({
                    class_name: 'uptime',
                    binds: [['label', vars.uptime, 'value', t => `uptime: ${t}`]],
                }),
            ],
        }),
        Widget.Box({
            class_name: 'calendar',
            children: [
                Widget.Calendar({
                    hexpand: true,
                    hpack: 'center',
                }),
            ],
        }),
    ],
});
