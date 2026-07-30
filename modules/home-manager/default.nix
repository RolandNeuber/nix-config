{ config, lib, ... }:
let
  s = config.nixConfig.scope;
in {
  imports = 
    []
    ++ lib.optionals (!s.system) [ ./standalone   ]
    ++ lib.optionals s.system    [ ./nixos-module ];
}
