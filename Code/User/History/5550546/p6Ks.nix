{ pkgs, config, lib, ... }:

{
  services = {
    tlp.enable = false;
    tlp.settings = {
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      CPU_SCALING_GOVERNOR_ON_AC = "ondemand";
      CPU_ENERGY_PERF_POLICY_ON_AC = "default";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_power";
      CPU_BOOST_ON_AC = 0;
      CPU_HWP_DYN_BOOST_ON_AC = 0;
    };
  };
}
