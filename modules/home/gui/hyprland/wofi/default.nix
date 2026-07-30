{ pkgs, ... }:
{
  programs.wofi = {
    enable = true;
    style = pkgs.callPackage ../scss.nix {} ./style.scss;
    settings = {
      hide_scroll = true;
      key_expand = "Tab";
      prompt = "";
    };
  };
}