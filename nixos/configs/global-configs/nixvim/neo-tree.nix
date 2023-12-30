{ pkgs, lib, ... }:

{
  programs.nixvim.plugins.neo-tree = {
    enable = true;
    filesystem = {
      filteredItems = {
        hideHidden = false;
        hideDotfiles = false;
        forceVisibleInEmptyFolder = true;
        hideGitignored = false;

      };
    };
  };
}
