let
  user1 = "martin";
in

{
  hostname = "ThinkPad";
  user1 = user1;
  homeDirectoryUser1 = "/home/${user1}";
}
