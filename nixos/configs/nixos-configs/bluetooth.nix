{ ... }:

{
  hardware = {
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
    bluetooth = {
      settings = {
        General = {
          ControllerMode = "dual";
          FastConnectable = "true";
          Experimental = "true";
        };
        Policy = {
          AutoEnable = "true";
        };
      };
    };
  };
}
