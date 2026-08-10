{ config, lib, ... }:
let
  desktopEnvironment = config.nixConfig.platform.desktopEnvironment;
{
  imports = lib.optionals (desktopEnvironment == "hyprland") [
    ./hyprland
  ] ++ lib.optionals (desktopEnvironment == "cinnamon") [
    ./cinnamon.nix
  ];
}