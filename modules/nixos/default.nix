{ config, lib, ... }:
let
  p = config.nixConfig.purpose;
in {
  imports =
    []
    ++ lib.optionals p.consumption      [ ./consumption       ]
    ++ lib.optionals p.infrastructure   [ ./infrastructure    ]
};
