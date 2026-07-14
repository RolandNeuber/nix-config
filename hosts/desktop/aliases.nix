{ ... }:
let
  flakeLocation = "--flake ~/nix-config/hosts/desktop";
in {
  environment.shellAliases = rec {
    ll = "ls -al";
    switch = "sudo nixos-rebuild switch " + flakeLocation;
    update = "nix flake update " + flakeLocation + " && " + switch;
  };
}
