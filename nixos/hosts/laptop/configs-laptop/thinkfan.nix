{ pkgs, config, lib, ... }:

{
  services = {
    thinkfan.enable = true;
    thinkfan.extraArgs = [ "-b""-10" "-s" "1" ];
    thinkfan.sensors = [
      {
        query = "/proc/acpi/ibm/thermal";
        type = "tpacpi";
        #indices= [0];
      }
    ];
    thinkfan.fans = [
      {
        query = "/proc/acpi/ibm/fan";
        type = "tpacpi";
      }
    ];
    thinkfan.levels = [
      [ 0 0 90 ]
      [ 1 87 95 ]
      [ "level auto" 92 32767 ]
    ];
  };
}
