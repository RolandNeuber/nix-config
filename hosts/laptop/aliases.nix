{ ... }:
let
  flakeLocation = "--flake ~/nix-config/hosts/laptop";
in {
  home.shellAliases = rec {
    ll = "ls -al";
    switch = "home-manager switch " + flakeLocation;
    update = "nix flake update " + flakeLocation + " && " + switch;
  };
}
