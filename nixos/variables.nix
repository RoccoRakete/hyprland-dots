let
  user1 = "martin";
in

  {
    desktop = "OptiPlex3060";
    laptop = "ThinkPad";
    user1 = user1;
    homeDirectoryUser1 = "/home/${user1}";
  }
