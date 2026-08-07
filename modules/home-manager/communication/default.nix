{ config, lib, ... }:
let 
  cfg = config.nixConfig.purpose.communication;
  capabilities = config.nixConfig.capabilities.enable;
in {
  imports = [
    ./beeper.nix
    ./discord.nix
    ./element_desktop.nix
    ./element-web.nix
    ./fluffychat.nix
    ./thunderbird.nix
  ];

  config = lib.mkIf (cfg.enable && capabilities.gui && capabilities.networking) cfg.modules;
}