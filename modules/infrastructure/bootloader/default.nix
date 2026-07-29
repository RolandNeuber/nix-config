{ config, lib, ... }:
let
  bootloader = config.nixConfig.platform.bootloader;
{
  imports = [

  ] ++ lib.optionals (bootloader == "grub") [
    ./grub.nix
  ] ++ lib.optionals (bootloader == "systemd") [
    ./systemd-boot.nix
  ];
}