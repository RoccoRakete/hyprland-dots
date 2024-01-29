{ pkgs, config, lib, ... }:

{
  services = {
    tlp.enable = true;
    tlp.settings = {
      PLATFORM_PROFILE_ON_BAT = "low-power";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
      CPU_BOOST_ON_BAT = 1;
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      MEM_SLEEP_ON_BAT = "deep";

      PLATFORM_PROFILE_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_AC = "balance_performance";
      CPU_BOOST_ON_AC = 1;
      CPU_SCALING_GOVERNOR_ON_AC = "performance";

      WOL_DISABLE = "Y";
    };
  };
}
