{ ... }:
{
  imports = [
    ./auto-optimization.nix
    ./auto-garbage-collection.nix
    ./grub.nix
    ./localization_de.nix
    ./networking.nix
    ./pipewire.nix
    #./systemd-boot.nix
  ];
}
