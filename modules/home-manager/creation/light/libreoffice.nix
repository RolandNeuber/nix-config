{ pkgs, ... }:
{
  nixConfig.purpose.creation.modules = {
    home.packages = with pkgs; [
      libreoffice
    ];
  };
}
