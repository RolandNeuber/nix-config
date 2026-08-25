{ pkgs, ... }:
{
  home.packages = with pkgs; [
    rclip
  ];
}
