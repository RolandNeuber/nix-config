{ pkgs, ... }:
{
  nixConfig.purpose.communication = {
    home.packages = with pkgs; [
      fluffychat
    ];
  };
}
