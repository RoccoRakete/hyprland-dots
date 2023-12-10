let 
user1 = "martin";
in 

{
  hostname = "OptiPlex3060";
  user1 = ${user1};
  homeDirectory1 = "/home/${user1}";
}
