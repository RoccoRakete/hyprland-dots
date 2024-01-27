![alt text](https://raw.githubusercontent.com/trinib/trinib/82213791fa9ff58d3ca768ddd6de2489ec23ffca/images/footer.svg)

# 👀 **Screenshots** 
![Hyprland_new](https://github.com/RoccoRakete/hyprland-dots/assets/44879342/0acf96c1-93b5-4c9a-9e71-7775172904d4)

---

# ⏰ **Updates**
 * This has changed quiet a lot...
   * These dotfiles are now intended to be used with NixOS. 
   * I removed the ability to set GTK-Themes/Icons due to weird behaviors... This styling is now to be done with home-manager.
   * More small changes has been made. 
 * works with ags > 1.5.0! If you want to use it with ags < 1.5.0 please use: "ags_old_working_1.4.x"
 * Added the ability to set GTK-Themes/Icons directly from the ags config. -> This got removed! 
 * Pywal-Themes can also be set from the ags config.
 * Needs Ags v1.4.0 to work correctly now... 
 * Rofi Wallpaper switcher is now available. 
 * Added a systemresource monitor to the bar.

# 🔧 **Stuff used** 
* GTK-Theme: [Mostly Adwaita/adw-gtk3.](https://github.com/lassekongo83/adw-gtk3)
* Icons: [MoreWaita](https://github.com/somepaulo/MoreWaita)
* Compositor: [Hyprland](https://github.com/hyprwm/Hyprland)
* Shell: [ags](https://github.com/Aylur/ags)
* Terminal: [Kitty](https://github.com/kovidgoyal/kitty)
* [Wallaper shown on the pictures](https://github.com/AngelJumbo/gruvbox-wallpapers/blob/main/wallpapers/irl/stairs.jpg)

# 🎨 **The Ags-Shell** 
When I first started using ags I thought, OMG: Why is this so hard and complicated ...

... but it's really not. If you want to make some minor adjustments to the shell, it's highly recommended, that you learn some JavaScript and (S)CSS for styling.

JavaScript is a quiet simple programming language and since you already have a useful project to work with, it's easy to try out and make changes on the fly :) 

There is also a nice [Wiki](https://github.com/Aylur/ags/wiki)!

The volume is controlled by ags, with Hyprland like this:
```
bind = , XF86AudioRaiseVolume , exec , ags run-js "audio.speaker.volume += 0.05; indicator.speaker()"
bind = , XF86AudioLowerVolume , exec , ags run-js "audio.speaker.volume -= 0.05; indicator.speaker()"
```
... this triggers the OSD to show up too!
This should work with brightness control too, but I can't verify this, since I'm not using Linux on a Laptop.

# ⚙️ **!!obsolete!! GTK-Themes / GTK-Icons / PyWall-Themes**
![Screenshot_19-11-23_12-20](https://github.com/RoccoRakete/hyprland-dots/assets/44879342/0a197c8a-e0d8-40e4-acf2-7d17771c5bb7)


* The refering options are: ```misc.pywal.theme:``` ```misc.gtk.theme:``` ```misc.gtkIcons.theme:```

  ### Make sure these namings match exactly the themes you want to use! 
  Otherwise the last used theme will be used.
  * Pywall-Themes can be found [here.](https://adamrutter.github.io/pywal-themes-preview/)
    Or simply by running ```wal --theme``` in your terminal and just picking one.
    
  GTK-Icons and GTK-Themes should have the exact same naming as found in ```~/.themes/``` for example.
  
  After you have set up everything, it's just a matter of chaning the themes from the settings panel! :)
  
  Have fun! 

# 📜 **Installation**
If you still want to use this with anything other than NixOS, this is the stuff you need to install:

If you install [ags](https://github.com/Aylur/ags/wiki/installation) and [Hyprland](https://wiki.hyprland.org/Getting-Started/Installation/) you're 99% ready to go. 

Forthermore I recommend installing the following things: 
* [playerctl](https://github.com/altdesktop/playerctl) for proper media control.
* [A nerdfont](https://www.nerdfonts.com/) for displaying icons.
* [Anyrun](https://github.com/Kirottu/anyrun) as an application launcher, web search and many more. Although ags has it's own application launcher, I like anyrun much more since It's capable of also doing websearches and much more! :D 
* [GTK-Lock](https://github.com/jovanlanik/gtklock) ... same thing goes with anyrun. I just like it much more, but this is totaly up to you!



[![Anurag's GitHub stats-Dark](https://github-readme-stats.vercel.app/api?username=RoccoRakete&show_icons=true&theme=dark#gh-dark-mode-only)](https://github.com/anuraghazra/github-readme-stats#gh-dark-mode-only)
