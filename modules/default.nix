{ ... }:
{
  options.nixConfig = {
    purpose = {
      communication    = lib.mkEnableOption "communication programs";
      consumption      = lib.mkEnableOption "programs primarily intended for media consumption";
      creation         = lib.mkEnableOption "programs primarily intended for media creation";
      development      = lib.mkEnableOption "development tools";
      infrastructure   = lib.mkEnableOption "essential tools for multi-device integration or system services" true;
      languageLearning = lib.mkEnableOption "tools for language learning (Japanese specifically)";
      university       = lib.mkEnableOption "programs needed only in university context";
      utility          = lib.mkEnableOption "tools useful in many contexts, but not essential" true;
    };
    capabilities = {
      performant = lib.mkEnableOption "performance intensive application support";
      gui        = lib.mkEnableOption "GUI support" true;
      networking = lib.mkEnableOption "online support" true;
    }
    scope = {
      system = lib.mkEnableOption "system packages";
      user   = lib.mkEnableOption "user packages" true;
    };

    platform = {
      bootloader = lib.mkOption {
        type = lib.types.enum [
          "grub"
          "systemd"
        ];
        default = "grub";
        description = "The bootloader the system uses."
      }
      desktopEnvironment = lib.mkOption {
        type = lib.types.nullOr (lib.types.enum [
          "cinnamon"
          "hyprland"
        ]);
        default = null;
        description = "The desktop environment used.";
      };
      shell = lib.mkOption {
        type = lib.types.enum [
          "zsh"
          "nushell"
        ];
        default = "zsh";
        description = "The shell used.";
      };
    };
  };

  let
    p = nixConfig.purpose;
  in {
    imports =
      []
      ++ lib.optionals p.communication    [ ./communication     ]
      ++ lib.optionals p.consumption      [ ./consumption       ]
      ++ lib.optionals p.creation         [ ./creation          ]
      ++ lib.optionals p.development      [ ./development       ]
      ++ lib.optionals p.infrastructure   [ ./infrastructure    ]
      ++ lib.optionals p.languageLearning [ ./language_learning ]
      ++ lib.optionals p.university       [ ./university        ]
      ++ lib.optionals p.utility          [ ./utility           ]
  };
}