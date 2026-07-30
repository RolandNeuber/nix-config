{ config, lib, ... }:
let 
  capabilities = config.nixConfig.capabilities;
in {
  imports = lib.optionals (capabilities.gui && capabilities.networking) [
    ./beeper.nix
    ./discord.nix
    ./element_desktop.nix
    ./element-web.nix
    ./fluffychat.nix
    ./thunderbird.nix
  ];
}