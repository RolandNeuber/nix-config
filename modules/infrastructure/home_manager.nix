{ pkgs, ... }:
{
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    users.roland = {
      home.stateVersion = "26.05";
      imports = [
        ./home
      ];
    };
  };
}

