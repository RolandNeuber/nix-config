{ ... }:
{
  imports = [
    ./grub.nix
    ./localization_de.nix
    ./networking.nix
    ./pipewire.nix
    #./systemd-boot.nix
  ];
}
