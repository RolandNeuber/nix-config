{ ... }:
{
  programs.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        ../wallpapers/Snow-valley-1080p.jpg
        ../wallpapers/eva-logo.png
        ../wallpapers/eva-wallpaper.png
      ];
      wallpaper = [
        "eDP-1, ../wallpapers/eva-logo.png"
      ];
    };
  };
}