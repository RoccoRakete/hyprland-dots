import { type BarWidget } from "widget/bar/Bar"
import { opt, mkOptions } from "lib/option"

const options = mkOptions(OPTIONS, {
    autotheme: opt(false),

    wallpaper: opt(`/home/${USER}/.config/background`, { persistent: true }),

    theme: {
        dark: {
            primary: {
                bg: opt("#51a4e7"),
                fg: opt("#141414"),
            },
            error: {
                bg: opt("#e55f86"),
                fg: opt("#141414"),
            },
            bg: opt("#171717"),
            fg: opt("#eeeeee"),
            widget: opt("#eeeeee"),
            border: opt("#eeeeee"),
        },
        light: {
            primary: {
                bg: opt("#426ede"),
                fg: opt("#eeeeee"),
            },
            error: {
                bg: opt("#b13558"),
                fg: opt("#eeeeee"),
            },
            bg: opt("#fffffa"),
            fg: opt("#080808"),
            widget: opt("#080808"),
            border: opt("#080808"),
        },

        blur: opt(0),
        scheme: opt<"dark" | "light">("dark"),
        widget: { opacity: opt(94) },
        border: {
            width: opt(0),
            opacity: opt(96),
        },

        shadows: opt(true),
        padding: opt(7),
        spacing: opt(5),
        radius: opt(15),
    },

    transition: opt(200),

    font: {
        size: opt(13),
        name: opt("Ubuntu Nerd Font"),
    },

    bar: {
        flatButtons: opt(true),
        position: opt<"top" | "bottom">("top"),
        corners: opt(false),
        layout: {
            start: opt<BarWidget[]>([
                "launcher",
                "workspaces",
                //"taskbar",
                "expander",
                //"messages",
            ]),
            center: opt<BarWidget[]>([
                "date",
            ]),
            end: opt<BarWidget[]>([
                //"media",
                "expander",
                "systray",
                "colorpicker",
                "screenrecord",
                "battery",
                "system",
                "powermenu",
            ]),
        },
        launcher: {
            icon: {
                colored: opt(true),
                icon: opt("nixos"),
            },
            label: {
                colored: opt(false),
                label: opt(" Applications"),
            },
            action: opt(() => App.toggleWindow("applauncher")),
        },
        date: {
            format: opt("%d.%m.%y - %H:%M"),
            action: opt(() => App.toggleWindow("datemenu")),
        },
        battery: {
            bar: opt<"hidden" | "regular" | "whole">("hidden"),
            charging: opt("#00D787"),
            percentage: opt(true),
            blocks: opt(7),
            width: opt(50),
            low: opt(30),
        },
        workspaces: {
            workspaces: opt(10),
        },
        taskbar: {
            monochrome: opt(true),
            exclusive: opt(false),
        },
        messages: {
            action: opt(() => App.toggleWindow("datemenu")),
        },
        systray: {
            ignore: opt([
                "KDE Connect Indicator",
                "spotify-client",
            ]),
        },
        media: {
            monochrome: opt(true),
            preferred: opt("spotify"),
            direction: opt<"left" | "right">("right"),
            length: opt(40),
        },
        powermenu: {
            monochrome: opt(false),
            action: opt(() => App.toggleWindow("powermenu")),
        },
    },

    applauncher: {
        iconSize: opt(62),
        width: opt(0),
        margin: opt(80),
        maxItem: opt(10),
            favorites: opt([
            [
                "firefox",
                "org.gnome.Nautilus",
                "obsidian",
                "spotify",
		"kitty"
            ],
            [
                "betaflight-configurator",
                "org.gnome.Calendar",
                "discord",
                "neovide",
                "gimp",
            ],
        ]),  
    },

    overview: {
        scale: opt(9),
        workspaces: opt(10),
        monochromeIcon: opt(true),
    },

    powermenu: {
        sleep: opt("systemctl suspend"),
        reboot: opt("systemctl reboot"),
        logout: opt("pkill Hyprland"),
        shutdown: opt("shutdown now"),
        layout: opt<"line" | "box">("line"),
        labels: opt(true),
    },

    quicksettings: {
        avatar: {
            image: opt(`/var/lib/AccountsService/icons/${Utils.USER}`),
            size: opt(70),
        },
        width: opt(380),
        position: opt<"left" | "center" | "right">("right"),
        networkSettings: opt("gtk-launch gnome-control-center"),
        media: {
            monochromeIcon: opt(true),
            coverSize: opt(100),
        },
    },

    datemenu: {
        position: opt<"left" | "center" | "right">("center"),
    },

    osd: {
        progress: {
            vertical: opt(true),
            pack: {
                h: opt<"start" | "center" | "end">("end"),
                v: opt<"start" | "center" | "end">("center"),
            },
        },
        microphone: {
            pack: {
                h: opt<"start" | "center" | "end">("center"),
                v: opt<"start" | "center" | "end">("end"),
            },
        },
    },

    notifications: {
        position: opt<Array<"top" | "bottom" | "left" | "right">>(["top", "right"]),
        blacklist: opt(["Spotify"]),
        width: opt(440),
    },

    hyprland: {
        gaps: opt(2.4),
        inactiveBorder: opt("333333ff"),
    },
})

globalThis["options"] = options
export default options
