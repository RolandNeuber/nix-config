{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    history.size = 10000;
    history.path = "$HOME/.histfile";

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };

  home.shell = pkgs.zsh;
}

