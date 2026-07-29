{ pkgs, ... }:
{
  home-manager = {
    home.packages = with pkgs; [
      tailscale
    ];
  }

  nixos = {
    services.tailscale.enable = true;
  }
}
