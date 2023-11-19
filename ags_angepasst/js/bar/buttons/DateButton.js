import Clock from '../../misc/Clock.js';
import PanelButton from '../PanelButton.js';
import { App } from '../../imports.js';

export default ({ format = '%d.%m.%y - %H:%M' } = {}) => PanelButton({
    class_name: 'dashboard panel-button',
    onClicked: () => App.toggleWindow('dashboard'),
    window: 'dashboard',
    content: Clock({ format }),
});
