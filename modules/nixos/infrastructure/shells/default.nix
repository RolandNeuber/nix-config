{ config, lib, ... }:
let
  shell = config.nixConfig.platform.shell;
{
  imports = [

  ] ++ lib.optionals (shell == "zsh") [
    ./zsh.nix
  ];
}