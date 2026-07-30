{ ... }:
{
  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
      useOSProber = true;
      extraEntries = ''
        menuentry "Linux Mint" --class linuxmint {
          insmod part_gpt
          insmod fat
          search --no-floppy --fs-uuid --set=root E01C-4A98
          chainloader /EFI/ubuntu/shimx64.efi
        }
      '';
    };
  };
}
