{ ... }:
{
  imports = [
  ];
}

{ config, lib, ... }:
let 
  capabilities = config.nixConfig.capabilities;
in {
  imports = [
    ./android-tools.nix
    ./git.nix
    ./htop.nix
    ./tree.nix
    ./typst.nix
    ./vim.nix
    ./zip.nix
  ] ++ lib.optionals capabilities.gui [
    ./engrampa.nix
    ./firefox.nix
    ./keepassxc
  ] ++ lib.optionals capabilities.networking [
    ./curl.nix
    ./wakeonlan.nix
    ./wget.nix
    ./ytdlp.nix
  ];
}