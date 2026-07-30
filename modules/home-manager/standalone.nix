{ config, lib, pkgs, ... }:
{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "roland";
  home.homeDirectory = "/home/roland";
  
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "26.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;

  targets.genericLinux.gpu.enable = true;

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
}
