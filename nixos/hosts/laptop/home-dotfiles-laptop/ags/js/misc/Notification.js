import Widget from 'resource:///com/github/Aylur/ags/widget.js';
import Variable from 'resource:///com/github/Aylur/ags/variable.js';
import * as Utils from 'resource:///com/github/Aylur/ags/utils.js';
import GLib from 'gi://GLib';

/** @param {import('types/service/notifications').Notification} n */
const NotificationIcon = ({ app_entry, app_icon, image }) => {
    if (image) {
        return Widget.Box({
            vpack: 'start',
            hexpand: false,
            class_name: 'icon img',
            css: `
                background-image: url("${image}");
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                min-width: 78px;
                min-height: 78px;
            `,
        });
    }

    let icon = 'dialog-information-symbolic';
    if (Utils.lookUpIcon(app_icon))
        icon = app_icon;

    if (Utils.lookUpIcon(app_entry || ''))
        icon = app_entry || '';

    return Widget.Box({
        vpack: 'start',
        hexpand: false,
        class_name: 'icon',
        css: `
            min-width: 78px;
            min-height: 78px;
        `,
        child: Widget.Icon({
            icon, size: 58,
            hpack: 'center', hexpand: true,
            vpack: 'center', vexpand: true,
        }),
    });
};

/** @param {import('types/service/notifications').Notification} notification */
export default notification => {
    const hovered = Variable(false);
    let block = false;

    const hover = () => {
        hovered.value = true;
        block = true;

        Utils.timeout(100, () => block = false);
    };

    const hoverLost = () => GLib.idle_add(0, () => {
        if (block)
            return GLib.SOURCE_REMOVE;

        hovered.value = false;
        notification.dismiss();
        return GLib.SOURCE_REMOVE;
    });

    const content = Widget.Box({
        class_name: 'content',
        children: [
            NotificationIcon(notification),
            Widget.Box({
                hexpand: true,
                vertical: true,
                children: [
                    Widget.Box({
                        children: [
                            Widget.Label({
                                class_name: 'title',
                                xalign: 0,
                                justification: 'left',
                                hexpand: true,
                                max_width_chars: 24,
                                truncate: 'end',
                                wrap: true,
                                label: notification.summary,
                                use_markup: true,
                            }),
                            Widget.Label({
                                class_name: 'time',
                                vpack: 'start',
                                label: GLib.DateTime.new_from_unix_local(notification.time).format('%H:%M'),
                            }),
                            Widget.Button({
                                on_hover: hover,
                                class_name: 'close-button',
                                vpack: 'start',
                                child: Widget.Icon('window-close-symbolic'),
                                on_clicked: () => notification.close(),
                            }),
                        ],
                    }),
                    Widget.Label({
                        class_name: 'description',
                        hexpand: true,
                        use_markup: true,
                        xalign: 0,
                        justification: 'left',
                        label: notification.body,
                        wrap: true,
                    }),
                ],
            }),
        ],
    });

    const actionsbox = Widget.Revealer({
        transition: 'slide_down',
        binds: [['revealChild', hovered]],
        child: Widget.EventBox({
            on_hover: hover,
            child: Widget.Box({
                class_name: 'actions horizontal',
                children: notification.actions.map(action => Widget.Button({
                    on_hover: hover,
                    class_name: 'action-button',
                    on_clicked: () => notification.invoke(action.id),
                    hexpand: true,
                    child: Widget.Label(action.label),
                })),
            }),
        }),
    });

    return Widget.EventBox({
        class_name: `notification ${notification.urgency}`,
        vexpand: false,
        on_primary_click: () => {
            hovered.value = false;
            notification.dismiss();
        },
        properties: [['hovered', hovered]],
        on_hover: hover,
        on_hover_lost: hoverLost,
        child: Widget.Box({
            vertical: true,
            children: [
                content,
                notification.actions.length > 0 && actionsbox,
            ],
        }),
    });
};