{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    histSize = 10000;
    histFile = "$HOME/.histfile";

    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
  };
  users.defaultUserShell = pkgs.zsh;
}

