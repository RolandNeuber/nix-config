{ pkgs, ... }:
{
  home.packages = with pkgs; [
    xsct
  ];
}
