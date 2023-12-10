# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ inputs, config, pkgs, ... }:

{  
  home-manager.users.martin = { pkgs, ... }: {
  home.packages = [ 
  ];

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "23.11";
};
  imports = [ inputs.ags.homeManagerModules.default ];

  programs.ags = {
    enable = true;
    
    # null or path, leave as null if you don't want hm to manage the config
    configDir = null;

    # packages to add to gjs's runtime
    extraPackages = [ pkgs.libsoup_3 ];
  };
}
