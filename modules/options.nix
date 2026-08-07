{ lib, ... }:
{
  options.nixConfig = {
    purpose = {
      communication    = {
        enable = lib.mkEnableOption "communication programs";
        modules = lib.mkOption {
          type = lib.types.attrs;
          default = {};
          internal = true;
        };
      };
      consumption      = {
        enable = lib.mkEnableOption "programs primarily intended for media consumption";
        modules = lib.mkOption {
          type = lib.types.attrs;
          default = {};
          internal = true;
        };
      };
      creation         = {
        enable = lib.mkEnableOption "programs primarily intended for media creation";
        modules = lib.mkOption {
          type = lib.types.attrs;
          default = {};
          internal = true;
        };
      };
      development      = {
        enable = lib.mkEnableOption "development tools";
        modules = lib.mkOption {
          type = lib.types.attrs;
          default = {};
          internal = true;
        };
      };
      infrastructure   = {
        enable = lib.mkEnableOption "essential tools for multi-device integration or system services" true;
        modules = lib.mkOption {
          type = lib.types.attrs;
          default = {};
          internal = true;
        };
      };
      languageLearning = {
        enable = lib.mkEnableOption "tools for language learning (Japanese specifically)";
        modules = lib.mkOption {
          type = lib.types.attrs;
          default = {};
          internal = true;
        };
      };
      university       = {
        enable = lib.mkEnableOption "programs needed only in university context";
        modules = lib.mkOption {
          type = lib.types.attrs;
          default = {};
          internal = true;
        };
      };
      utility          = {
        enable = lib.mkEnableOption "tools useful in many contexts, but not essential" true;
        modules = lib.mkOption {
          type = lib.types.attrs;
          default = {};
          internal = true;
        };
      };
    };
    capabilities = {
      performant = lib.mkEnableOption "performance intensive application support";
      gui        = lib.mkEnableOption "GUI support" true;
      networking = lib.mkEnableOption "online support" true;
    };
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
        description = "The bootloader the system uses.";
      };
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
}