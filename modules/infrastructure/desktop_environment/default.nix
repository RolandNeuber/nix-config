{ config, lib, ... }:
let
  desktopEnvironment = config.nixConfig.desktopEnvironment;
{
  imports = lib.optionals (desktopEnvironment == "hyprland") [
    ./hyprland
  ] ++ lib.optionals (desktopEnvironment == "cinnamon") [
    ./cinnamon.nix
  ];
}