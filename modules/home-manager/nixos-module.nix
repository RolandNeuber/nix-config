{ config, lib, pkgs, ... }:
let
  p = config.nixConfig.purpose;
in {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    users.roland = {
      home.stateVersion = "26.05";
      imports =
        []
        ++ lib.optionals p.communication    [ ./communication     ]
        ++ lib.optionals p.consumption      [ ./consumption       ]
        ++ lib.optionals p.creation         [ ./creation          ]
        ++ lib.optionals p.development      [ ./development       ]
        ++ lib.optionals p.infrastructure   [ ./infrastructure    ]
        ++ lib.optionals p.languageLearning [ ./language_learning ]
        ++ lib.optionals p.university       [ ./university        ]
        ++ lib.optionals p.utility          [ ./utility           ];
    };
  };
}
