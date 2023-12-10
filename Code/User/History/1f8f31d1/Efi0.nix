{ pkgs, nixos-icons, options, lib, ... }:

{
  services = {
    thinkfan.enable = true;
    thinkfan.sensors = [
      {
        query = "/proc/acpi/ibm/thermal";
        type = "tpacpi";
      }
    ];
    thinkfan.fans = [
      {
        query = "/proc/acpi/ibm/fan";
        type = "tpacpi";
      }
    ];
    thinkfan.levels = [
      [ 0 0 85 ]
      [ 1 82 91 ]
      [ "level auto" 89 32767 ]
    ];
  };
}
