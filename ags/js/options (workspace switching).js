import { Utils } from './imports.js';

const hyprctlOutput = JSON.parse(Utils.exec('hyprctl -j monitors'));
const monitorNameToCheck = "HDMI-A-2";

let configuration;

if (hyprctlOutput.some(monitor => monitor.name === monitorNameToCheck)) {
  configuration = {
    preferredMpris: 'spotify',
    workspaces: 20,
    dockItemSize: 56,
    battaryBar: {
      showPercentage: true,
      low: 20,
      medium: 50,
    },
    temperature: '/sys/class/thermal/thermal_zone2/temp',
    systemFetchInterval: 1000,
    windowAnimationDuration: 350,
    brightnessctlKBD: 'asus::kbd_backlight',
  };
} else {
  configuration = {
    preferredMpris: 'spotify',
    workspaces: 10,
    dockItemSize: 56,
    battaryBar: {
      showPercentage: true,
      low: 20,
      medium: 50,
    },
    temperature: '/sys/class/thermal/thermal_zone2/temp',
    systemFetchInterval: 1000,
    windowAnimationDuration: 350,
    brightnessctlKBD: 'asus::kbd_backlight',
  };
}

export default configuration;
