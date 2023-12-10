{ config, ...}:

{
    home.file."${config.xdg.configHome}/neofetch" = {
    source = ./dotfiles/neofetch;
    recursive = true;
    enable = true;
  };
}