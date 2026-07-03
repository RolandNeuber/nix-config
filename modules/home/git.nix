{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      init = {
        defaultBranch = "main";
      };
      user = {
        name = "Roland Neuber";
        email = "rolandmartinneuber@gmail.com";
      };
      push = {
        autoSetupRemote = true;
      };
    };
  };
}
