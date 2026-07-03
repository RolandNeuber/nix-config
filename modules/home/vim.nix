{ pkgs, ... }:
{
  programs.vim = {
    enable = true;
    defaultEditor = true;
    #package = pkgs.vim-full;

    extraConfig = ''
      set number
    '';
  };
}
