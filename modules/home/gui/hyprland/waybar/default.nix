{ pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    style = pkgs.callPackage ../scss.nix {} ./style.scss;
    settings = [
      {
        layer = "top";
        position = "top";
        reload_style_on_change = true;
        modules-left = ["custom/notification" "clock" "tray"];
        modules-center = ["hyprland/workspaces" "hyprland/window"];
        modules-right = ["custom/pipewire" "bluetooth" "network" "battery"];

        "custom/pipewire" = {
          exec = "pw-volume status";
          return-type = "json";
          interval = 3;
          signal = 8;
          format = "{icon}";
          format-icons = {
            mute ="<b><span color='#202020'>▌</span><span color='#202020'>▌</span><span color='#202020'>▌</span><span color='#202020'>▌</span><span color='#202020'>▌</span></b>";
            default = [
              "<b><span color='#62bc77'>▌</span><span color='#202020'>▌</span><span color='#202020'>▌</span><span color='#202020'>▌</span><span color='#202020'>▌</span></b>"
              "<b><span color='#62bc77'>▌</span><span color='#54a594'>▌</span><span color='#202020'>▌</span><span color='#202020'>▌</span><span color='#202020'>▌</span></b>"
              "<b><span color='#62bc77'>▌</span><span color='#54a594'>▌</span><span color='#47758e'>▌</span><span color='#202020'>▌</span><span color='#202020'>▌</span></b>"
              "<b><span color='#62bc77'>▌</span><span color='#54a594'>▌</span><span color='#47758e'>▌</span><span color='#393f76'>▌</span><span color='#202020'>▌</span></b>"
              "<b><span color='#62bc77'>▌</span><span color='#54a594'>▌</span><span color='#47758e'>▌</span><span color='#393f76'>▌</span><span color='#432b5f'>▌</span></b>"
            ];
          };
          tooltip-format = "{percentage}%";
        };
        "hyprland/workspaces" = {
          format = "<span stretch='ultracondensed'>{icon}</span>";
          format-icons = {
            active = "<span color='lime'>▰</span>";
            default = "<span color='white'>▰</span>";
            empty = "<span color='red'>▰</span>";
          };
          persistent-workspaces = {
            "*" = [ 1 2 3 4 5 ];
          };
        };
        "custom/notification" = {
          tooltip = false;
          format = "";
          on-click = "swaync-client -t -sw";
          escape = true;
        };
        clock = {
          format = "{:%H:%M %d.%m.}";
          interval = 1;
            format-alt = "{:%Y-%m-%d %H:%M:%S}";
            tooltip-format = "<tt><small>{calendar}</small></tt>";
            calendar = {
              mode           = "year";
              mode-mon-col   = 3;
              weeks-pos      = "right";
              on-scroll      = 1;
              format = {
                months =     "<span color='#ffead3'><b>{}</b></span>";
                days =       "<span color='#ecc6d9'><b>{}</b></span>";
                weeks =      "<span color='#99ffdd'><b>W{}</b></span>";
                weekdays =   "<span color='#ffcc66'><b>{}</b></span>";
                today =      "<span color='#000000' bgcolor='#ffffff'><b>{}</b></span>";
            };
          };
          actions =  {
            on-click-right = "mode";
            on-scroll-up = [ "tz_up" "shift_up" ];
            on-scroll-down = [ "tz_down" "shift_down" ];
          };
        };
        network = {
          format-wifi = " ";
          format-ethernet =" ";
          format-disconnected = " ";
          tooltip-format-disconnected = "Error";
          tooltip-format-wifi = "{essid} ({signalStrength}%) ";
          tooltip-format-ethernet = "{ifname} 🖧 ";
          on-click = "kitty nmtui";
        };
        bluetooth = {
          format-on = "󰂯";
          format-off = "BT-off";
          format-disabled = "󰂲";
          format-connected-battery = "{device_battery_percentage}% 󰂯";
          format-alt = "{device_alias} 󰂯";
          tooltip-format = "{controller_alias}\t{controller_address}\n\n{num_connections} connected";
          tooltip-format-connected = "{controller_alias}\t{controller_address}\n\n{num_connections} connected\n\n{device_enumerate}";
          tooltip-format-enumerate-connected = "{device_alias}\n{device_address}";
          tooltip-format-enumerate-connected-battery = "{device_alias}\n{device_address}\n{device_battery_percentage}%";
          on-click-right = "blueman-manager";
        }; 
        battery = {
          interval =30;
          states = {
            good = 95;
            warning = 30;
            critical = 20;
          };
          format = "{capacity}% {icon}";
          format-charging = "{capacity}% 󰂄";
          format-plugged = "{capacity}% 󰂄 ";
          format-alt = "{time} {icon}";
          format-icons = [
            "󰁻"
            "󰁼"
            "󰁾"
            "󰂀"
            "󰂂"
            "󰁹"
          ];
        };
        "custom/expand" = {
          format = "";
          tooltip = false;
        };
        "custom/endpoint" ={
          format = "|";
          tooltip = false;
        };
        "group/expand" = {
          orientation = "horizontal";
          drawer = {
            transition-duration = 600;
            transition-to-left = true;
            click-to-reveal = true;
          };
          modules = ["custom/expand" "cpu" "memory" "temperature" "custom/endpoint"];
        };
        cpu = {
            format = "󰻠";
            tooltip = true;
        };
        memory = {
            format = "";
        };
        temperature = {
            critical-threshold = 80;
            format = "";
        };
        tray = {
            icon-size = 14;
            spacing = 10;
        };
      }
    ];
  };
}
