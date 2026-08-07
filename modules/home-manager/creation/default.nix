{ config, lib, ... }:
let 
  cfg = config.nixConfig.purpose.creation;
  capabilities = config.nixConfig.capabilities.enable;
in {
  imports = [
    ./gimp.nix
    ./libreoffice.nix
    ./obsidian.nix
    ./blender.nix
    ./freecad.nix
    ./kicad.nix
  ];

  config = lib.mkIf (cfg.enable && capabilities.gui) cfg.modules;
}