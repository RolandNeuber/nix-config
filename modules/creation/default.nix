{ config, lib, ... }:
let 
  capabilities = config.nixConfig.capabilities;
in {
  imports = lib.optionals capabilities.gui [
    ./gimp.nix
    ./libreoffice.nix
    ./obsidian.nix
  ] ++ lib.optionals (capabilities.gui && capabilities.performant) [
    ./blender.nix
    ./freecad.nix
    ./kicad.nix
  ];
}