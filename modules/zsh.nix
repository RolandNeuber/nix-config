{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    histSize = 10000;
    histFile = "$HOME/.histfile";

    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = rec {
      ll = "ls -al";
      switch = "sudo nixos-rebuild switch";
      update = switch + " --upgrade";
    };
  };
  users.defaultUserShell = pkgs.zsh;
}

