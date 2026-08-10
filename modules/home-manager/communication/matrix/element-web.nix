{ pkgs, ... }:
{
  nixConfig.purpose.communication.modules = {
    home.packages = with pkgs; [
      element-web
    ];
  };
}
