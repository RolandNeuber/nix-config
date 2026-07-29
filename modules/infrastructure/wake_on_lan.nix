{ lib, config, ... }:

let
  wakeOnLan = config.nixConfig.wakeOnLan;
in
{
  options.nixConfig.wakeOnLan = {
    enable = lib.mkEnableOption "Wake-on-LAN";

    interface = lib.mkOption {
      type = lib.types.str;
      default = "enp42s0";
      description = "Network interface to enable Wake-on-LAN on";
    };
  };

  config = lib.mkIf cfg.enable {
    networking = {
      interfaces.${cfg.interface}.wakeOnLan.enable = true;

      firewall.allowedUDPPorts = [ 9 ];
    };
  };
}