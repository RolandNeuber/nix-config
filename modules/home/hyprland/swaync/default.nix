{ pkgs, ... }:
{
  services.swaync = {
    enable = true;
    style = pkgs.callPackage ../scss.nix {} ./style.scss;
    settings = {

    };
  };
}
