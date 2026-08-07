{ ... }:
{
  nixConfig.purpose.consumption.modules = {
    home.packages = with pkgs; [
      steam
    ];
  }
}