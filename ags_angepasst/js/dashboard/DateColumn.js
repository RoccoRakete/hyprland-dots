import icons from '../icons.js';
import Clock from '../misc/Clock.js';
import * as vars from '../variables.js';
import { Widget } from '../imports.js';
import Theme from '../services/theme/theme.js';

export default () => Widget.Box({
    vertical: true,
    class_name: 'datemenu',
    children: [
        Clock({ format: '%H:%M' }),
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
