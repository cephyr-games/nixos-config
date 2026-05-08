theme: {
  margin-top = 5;
  margin-left = 6;
  margin-right = 6;
  height = 36;
  modules-left = [
    "custom/logo"
    "user"
    "battery"
    "memory"
    "cpu"
    "temperature"
    "backlight"
    "idle_inhibitor"
    "privacy"
  ];
  modules-center = [
    "hyprland/workspaces"
  ];
  modules-right = [
    "pulseaudio"
    "network"
    "clock"
  ];
  "hyprland/window" = {
    format = " {icon}";
    max-length = 35;
    rewrite = {
      "" = " ";
    };
    separate-outputs = true;
  };
  "hyprland/workspaces" = {
    format = "{icon}";
    on-click = "activate";
    format-icons = {
      active = "@";
    };
    sort-by-number = true;
    persistent-workspaces = {
      "*" = 5;
    };
  };
  "niri/workspaces" = {
    format = "{icon}";
    format-icons = {
      "1" = "1";
      "2" = "2";
      "3" = "3";
      "4" = "4";
      "5" = "5";
      "active" = "@";
      "default" = "#";
    };
  };
  idle_inhibitor = {
    format = "{icon}";
    format-icons = {
      "activated" = "󱎫";
      "deactivated" = "󰔛";
    };
  };
  bluetooth = {
    format = "󰂲";
    format-disabled = "󰂲";
    format-off = "󰂲";
    format-on = "";
    format-connected = "󰂱";
    format-connected-battery = "󰂱 ({device_battery_percentage}% )";
    tooltip-format = "Daemon is not running";
    tooltip-format-disabled = "Bluetooth is disabled\n{controller_alias}= {controller_address} {controller_address_type}";
    tooltip-format-off = "Bluetooth is turned off";
    tooltip-format-on = "Bluetooth is turned on\n{controller_alias}= {controller_address} {controller_address_type}";
    tooltip-format-connected = "Bluetooth is turned on\n{controller_alias}= {controller_address} {controller_address_type}\n{device_enumerate}";
    tooltip-format-enumerate-connected = "{device_alias} {device_address} {device_address_type}";
    on-click = "bluetoothctl power off";
    on-click-right = "bluetoothctl power on";
  };
  clock = {
    format = "{:%a %d.%m.%Y %H:%M}";
    tooltip-format = "<small><span font_desc='Mango 18'>{calendar}</span></small>";
    calendar = {
      mode = "year";
      mode-mon-col = 3;
      weeks-pos = "right";
      on-scroll = 1;
      format = {
        months = "<span color='#${theme.textMagenta}'>{}</span>";
        days = "<span color='#${theme.textMain}'>{}</span>";
        weeks = "<span color='#${theme.textOrange}'>W{}</span>";
        weekdays = "<span color='#${theme.textBlue}'>{}</span>";
        today = "<span color='#${theme.textYellow}'>{}</span>";
      };
    };
    actions = {
      on-click-right = "mode";
      on-scroll-up = "shift_up";
      on-scroll-down = "shift_down";
    };
  };
  cpu = {
    format = "{usage}% CPU";
    tooltip = false;
  };
  temperature = {
    critical-threshold = 80;
    format = "{temperatureC}°C";
    tooltip = false;
  };
  memory = {
    format = "{}% RAM";
  };
  power-profiles-daemon = {
    format = "{icon}";
    tooltip-format = "Power profile= {profile}\nDriver= {driver}";
    tooltip = true;
    format-icons = {
      default = "";
      performance = "";
      balanced = "";
      power-saver = "";
    };
  };
  backlight = {
    format = "{percent}% {icon}";
    format-icons = [
      ""
      ""
      ""
      ""
      ""
      ""
      ""
      ""
      ""
    ];
  };
  battery = {
    interval = 3;
    states = {
      warning = 30;
      critical = 15;
    };
    format = "{capacity}% {icon} {power= >5}W";
    format-warning = " {capacity}% {icon} {power= >5}W";
    format-critical = " {capacity}% {icon} {power= >5}W";
    format-full = "{capacity}% {icon} {power= >5}W";
    format-charging = " {capacity}% {icon} {power= >6}W";
    format-plugged = " {capacity}% {icon} {power= >6}W";
    format-icons = [
      " "
      " "
      " "
      " "
      " "
    ];
  };
  privacy = {
    modules = [
      {
        type = "screenshare";
      }
      {
        type = "audio-in";
      }
    ];
  };
  network = {
    format-wifi = "{essid} ({signalStrength}%) 󰖩";
    format-ethernet = "Connected";
    tooltip-format-wifi = "Wifi= {ifname} via {gwaddr} at {frequency}GHz\nIP Address= {ipaddr}/{cidr}\nSubnetmask= {netmask}";
    tooltip-format-ethernet = "Ethernet= {ifname}/{cidr} via {gwaddr}";
    tooltip-format-disconnected = "Disconnected";
    format-linked = "{ifname} (No IP)";
    format-disconnected = " Disconnected";
  };
  pulseaudio = {
    format = "{volume}%   {format_source}";
    format-bluetooth = "{volume}%    {format_source}";
    format-bluetooth-muted = "   {format_source}";
    format-muted = "  {format_source}";
    format-source = "{volume}% ";
    format-source-muted = "";
    tooltip = true;
    tooltip-format = "{desc}";
    on-click = "uwsm app -- pavucontrol";
  };
  user = {
    format = "  {user}  ";
    interval = 60;
    open-on-click = false;
    tooltip = false;
  };
  "custom/logo" = {
    format = "  ";
    tooltip = true;
    tooltip-format = "I use NixOS btw";
  };
}
