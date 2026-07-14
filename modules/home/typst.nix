{ pkgs, ... }:
{
  home.packages = with pkgs; [
    typst
    typst-live
    prettypst
  ];
}
