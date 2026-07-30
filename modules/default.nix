{ config, lib, ... }:
let
  s = config.nixConfig.scope;
in {
  imports =
  [ ./options.nix ]
  ++ lib.optionals s.user   [ ./home-manager ]
  ++ lib.optionals s.system [ ./nixos        ];
}