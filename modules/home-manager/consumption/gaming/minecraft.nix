{ pkgs, ... }:
{
  nixConfig.purpose.consumption.modules = {
    home.packages = with pkgs; [
      prismlauncher
    ];
  };
}
