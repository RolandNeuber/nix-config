{ pkgs, ... }:
{
  home-manager = {
    programs.zsh = {
      enable = true;

      history.size = 10000;
      history.path = "$HOME/.histfile";

      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
    };
  };
  
  nixos = {
    programs.zsh = {
      enable = true;

      histSize = 10000;
      histFile = "$HOME/.histfile";

      enableCompletion = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
    };
    users.defaultUserShell = pkgs.zsh;
  };
}

