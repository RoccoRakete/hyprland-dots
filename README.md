![alt text](https://raw.githubusercontent.com/trinib/trinib/82213791fa9ff58d3ca768ddd6de2489ec23ffca/images/footer.svg)

# 👀 **Screenshots** 
![Hyprland_new](https://github.com/RoccoRakete/hyprland-dots/assets/44879342/0acf96c1-93b5-4c9a-9e71-7775172904d4)



https://github.com/RoccoRakete/hyprland-dots/assets/44879342/2a4c95f6-7b32-445d-92da-ac823dbdc34f



---

# ⏰ **Updates**
 * Added the ability to set GTK-Themes/Icons directly from the ags config. 
 * Pywal-Themes can also be set from the ags config.
 * Needs Ags v1.4.0 to work correctly now... 
 * Rofi Wallpaper switcher is now available. 
 * Added a systemresource monitor to the bar.

# 🔧 **Stuff used** 
* GTK-Theme: [Gruvbox theme by me.](https://github.com/RoccoRakete/gruvbox-gtk-theme)
* Icons: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
* Compositor: [Hyprland](https://github.com/hyprwm/Hyprland)
* Shell: [ags](https://github.com/Aylur/ags)
* Launcher: [Anyrun](https://github.com/Kirottu/anyrun)
* Terminal: [Kitty](https://github.com/kovidgoyal/kitty)
* [Rofi](https://github.com/lbonn/rofi)
* [Wallaper](https://github.com/AngelJumbo/gruvbox-wallpapers/blob/main/wallpapers/irl/stairs.jpg)

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

# ⚙️ **GTK-Themes / GTK-Icons / PyWall-Themes**
![Screenshot_15-10-23_18-19](https://github.com/RoccoRakete/hyprland-dots/assets/44879342/dd4d560e-6e05-44d9-ab41-bc190bb7b8fa)

* The refering options are: ```gtk_theme:``` ```icons:``` ```pywall_theme:```

  ### Make sure these namings match exactly the themes you want to use! 
  Otherwise the last used theme will be used.
  * Pywall-Themes can be found [here.](https://adamrutter.github.io/pywal-themes-preview/)
    Or simply by running ```wal --theme``` in your terminal and just picking one.
    
  GTK-Icons and GTK-Themes should have the exact same naming as found in ```~/.themes/``` for example.
  
  After you have set up everything, it's just a matter of chaning the themes from the settings panel! :)
  
  Have fun! 

# 📜 **Installation** 
If you install [ags](https://github.com/Aylur/ags/wiki/installation) and [Hyprland](https://wiki.hyprland.org/Getting-Started/Installation/) you're 99% ready to go. 

Forthermore I recommend installing the following things: 
* [playerctl](https://github.com/altdesktop/playerctl) for proper media control.
* [A nerdfont](https://www.nerdfonts.com/) for displaying icons.
* [Anyrun](https://github.com/Kirottu/anyrun) as an application launcher, web search and many more. Although ags has it's own application launcher, I like anyrun much more since It's capable of also doing websearches and much more! :D 
* [GTK-Lock](https://github.com/jovanlanik/gtklock) ... same thing goes with anyrun. I just like it much more, but this is totaly up to you!



[![Anurag's GitHub stats-Dark](https://github-readme-stats.vercel.app/api?username=RoccoRakete&show_icons=true&theme=dark#gh-dark-mode-only)](https://github.com/anuraghazra/github-readme-stats#gh-dark-mode-only)
