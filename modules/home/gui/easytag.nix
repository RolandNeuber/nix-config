{ pkgs, ... }:
{
  home.packages = with pkgs; [
    easytag
  ];
}
