{ config, lib, ... }:
let 
  capabilities = config.nixConfig.capabilities;
in {
  imports = [
    ./act.nix
    ./direnv.nix
  ] ++ lib.optionals capabilities.gui [
    ./vscode.nix
  ];
}
