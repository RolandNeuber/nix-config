{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    histSize = 10000;
    histFile = "$HOME/.histfile";

    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ll = "ls -al";
      config = "sudo $EDITOR /etc/nixos/flake.nix";
      switch = "sudo nixos-rebuild switch";
      update = "sudo nixos-rebuild switch --upgrade";
    };
  };
  users.defaultUserShell = pkgs.zsh;
}

