![alt text](https://raw.githubusercontent.com/trinib/trinib/82213791fa9ff58d3ca768ddd6de2489ec23ffca/images/footer.svg)


# 👀 **Screenshots** 
![Discord_Hyprland](https://github.com/RoccoRakete/hyprland-dots/assets/44879342/ca05a82c-310a-4046-b3be-90cf5a4a74d3)

---

[![Anurag's GitHub stats-Dark](https://github-readme-stats.vercel.app/api?username=RoccoRakete&show_icons=true&theme=dark#gh-dark-mode-only)](https://github.com/anuraghazra/github-readme-stats#gh-dark-mode-only)

# 🔧 **Stuff used** 
* GTK-Theme: [Gruvbox theme by me.]()
* Icons: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
* Compositor: [Hyprland](https://github.com/hyprwm)
* Shell: [ags](https://github.com/Aylur/ags)
* Launcher: [Anyrun](https://github.com/Kirottu/anyrun)
* Terminal: [Kitty](https://github.com/kovidgoyal/kitty)
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
This should with brightness control too, but I can't verify this, since I'm not using Linux on a Laptop. 

# 📜 **Installation** 
If you install [ags](https://github.com/Aylur/ags/wiki/installation) and [Hyprland](https://wiki.hyprland.org/Getting-Started/Installation/) you're 99% ready to go. 

Forthermore I recommend installing the following things: 
* [playerctl](https://github.com/altdesktop/playerctl) for proper media control.
* [A nerdfont](https://www.nerdfonts.com/) for displaying icons.
* [Anyrun](https://github.com/Kirottu/anyrun) as an application launcher, web search and many more. Although ags has it's own application launcher, I like anyrun much more since It's capable of also doing websearches and much more! :D 
* [GTK-Lock](https://github.com/jovanlanik/gtklock) ... same thing as with anyrun. I just like it much more, but this is totaly up to you! 
