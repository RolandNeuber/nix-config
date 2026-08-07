{ config, lib, ... }:
let 
  cfg = config.nixConfig.purpose.consumption;
  capabilities = config.nixConfig.capabilities.enable;
in {
  imports = [
    ./minecraft.nix
    ./rhythmbox.nix
    ./steam.nix
  ];

  config = lib.mkIf (cfg.enable && capabilities.gui) cfg.modules;
}