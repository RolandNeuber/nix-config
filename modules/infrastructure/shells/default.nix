{ config, lib, ... }:
let
  shell = config.nixConfig.shell;
{
  imports = [
    ./zoxide.nix
  ] ++ lib.optionals (shell == "nushell") [
    ./nushell.nix
  ] ++ lib.optionals (shell == "zsh") [
    ./oh_my_zsh.nix
    ./zsh.nix
  ];
}