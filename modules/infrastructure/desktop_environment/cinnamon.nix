{ ... }:
{
  home-manager = {
    dconf.settings = {
      "org/cinnamon/desktop/keybindings/media-keys" = {
        screensaver = [ "<Super>l" ];
      };
    };
  };

  nixos = {
    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable the Cinnamon Desktop Environment.
    services.xserver.displayManager.lightdm.enable = true;
    services.xserver.desktopManager.cinnamon = {
      enable = true;
      extraGSettingsOverrides = ''
        [org.cinnamon.muffin]
        tile-maximize=true
      '';
    };

    # Configure keymap in X11
    services.xserver.xkb = {
      layout = "de";
      variant = "";
    };
  };
}
