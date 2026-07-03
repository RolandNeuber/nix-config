{ ... }:
{
  programs.hyprlock = {
    enable = true;
    settings = {
      background = [
        {
          monitor = "";
          path = "$wallpaper";
          blur_size = 5;
          blur_passes = 3;
          brightness = .6;
        }
      ];

      input-field = [
        {
          monitor = "";
          size = "90, 30";
          outline_thickness = 1;
          inner_color = "rgba(0, 0, 0, 1)"; # no fill

          outer_color = "rgba(33ccffee) rgba(00ff99ee) 45deg";
          check_color = "rgba(00ff99ee) rgba(ff6633ee) 120deg";
          fail_color = "rgba(ff6633ee) rgba(ff0066ee) 40deg";

          font_color = "rgb(143, 143, 143)";
          fade_on_empty = false;
          rounding = 10;

          position = "0, -40";
          halign = "center";
          valign = "center";
        }
      ];

      label = [
        {
          monitor = "";
          text = "cmd[update:1000] date +\"<b>%I</b>\"";
          color = "rgba(0,0,0, 1.0)";
          font_size = 200;
          font_family = "FiraCode";
          shadow_passes = 0;
          shadow_size = 5;
          position = "-120, 410";
          halign = "center";
          valign = "center";
        }
        {
          monitor = "";
          text = "cmd[update:1000] date +\"<b>%M</b>\"";
          color = "rgba(150,150,150, .4)";
          font_size = 200;
          font_family = "FiraCode";
          shadow_passes = 0;
          shadow_size = 5;
          position = "120, 230";
          halign = "center";
          valign = "center";
        }
        {
          monitor = "";
          text = "cmd[update:1000] date +\"<b>%A, %B %d, %Y</b>\"";
          color = "rgba(0,0,0, 1.0)";
          font_size = 40;
          font_family = "FiraCode";
          shadow_passes = 0;
          shadow_size = 4;
          position = "-40, -20";
          halign = "right";
          valign = "top";
        }
        {
          monitor = "";
          text = "<b>$USER</b>";
          color = "rgba(255,255,255, 1.0)";
          font_size = 10;
          font_family = "FiraCode";
          shadow_passes = 0;
          shadow_size = 4;
          position = "0, 0";
          halign = "center";
          valign = "center";
        };
      ];
    };
  };
}