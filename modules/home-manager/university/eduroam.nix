{ pkgs, ... }:
{
  home.packages = with pkgs; [
    easyroam-connect-desktop
  ];
}
