{ pkgs, ... }:
lib.mkIf config.nixConfig.capabilities.enable.performant {
  nixConfig.purpose.creation.modules = {
    home.packages = with pkgs; [
      freecad
    ];
  };
}