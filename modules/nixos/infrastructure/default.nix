{ ... }:
{
  imports = [
    ./bootloader
    ./desktop_environment
    ./services
    ./shells
    ./agenix.nix
    ./localization.nix
    ./networking.nix
    ./pipewire.nix
    ./wake_on_lan.nix
  ]
}