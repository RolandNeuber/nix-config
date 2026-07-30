{ ... }:
let 
  wallpaper = builtins.toString ../wallpapers/eva-logo.png;
in {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        #../wallpapers/Snow-valley-1080p.jpg
        wallpaper
        #../wallpapers/eva-wallpaper.png
      ];
      wallpaper = [
        "eDP-1, ${wallpaper}"
      ];
    };
  };
}
