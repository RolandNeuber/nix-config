{ config, lib, ... }:
let 
  capabilities = config.nixConfig.capabilities;
in {
  imports = lib.optionals capabilities.gui [
    ./minecraft.nix
    ./rhythmbox.nix
    ./steam.nix
  ];
}