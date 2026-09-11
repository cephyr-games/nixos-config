{ theme }: /* kdl */ ''
  binds {
      "Mod+Q" { spawn-sh "alacritty -e yazi"; }
      "Mod+Shift+Q" { spawn-sh "kitty -e yazi"; }
      "Mod+W" { spawn "firefox"; }
      "Mod+F" { spawn "alacritty"; }
      "Mod+P" { spawn-sh "alacritty -e sh -c \"r && sleep 0.1\""; }
      "Mod+G" { spawn "signal-desktop"; }

      "Mod+C" repeat=false { close-window; }
      "Mod+X" repeat=false { spawn-sh "pkill waybar || waybar"; }

      "Mod+T" { switch-preset-column-width; }
      "Mod+Shift+T" { switch-preset-column-width-back; }

      "Mod+B" repeat=false { toggle-overview; }

      // toggle focus to the other monitor
      "Mod+Tab" { focus-monitor-previous; }
      // move focused window to the other monitor
      "Mod+Shift+Tab" { move-window-to-monitor-previous; }

      "Mod+V" { maximize-window-to-edges; }
      "Mod+Shift+V" { fullscreen-window; }
      "Mod+Ctrl+V" { toggle-window-floating; }

      "Mod+S" { screenshot; }
      "Mod+Shift+S" { screenshot-screen write-to-disk=false; }
      "Mod+Ctrl+S" { screenshot-screen; }

      "Mod+R" repeat=false { spawn-sh "niri-toggle-chamel '#${theme.textEmph1}'"; }
      "Mod+Shift+R" repeat=false { spawn-sh "hyprpicker -aq"; }
      
      // mirror screen
      "Mod+Alt+M" repeat=false { spawn-sh "wl-mirror $(niri msg --json focused-output | jq -r .name)"; }

      "Mod+A" { spawn-sh "pkill wlsunset || wlsunset -t 2500 -T 3000 -g 0.7"; }

      "Mod+Shift+K" { quit skip-confirmation=true; }
      "Mod+Shift+Ctrl+K" { spawn-sh "shutdown now"; }
      "Mod+Ctrl+L" { spawn-sh "veila lock"; }
      "Mod+Shift+Ctrl+L" { spawn-sh "veila lock --wait-ready && systemctl suspend"; }

      "Mod+1" { focus-workspace "1"; }
      "Mod+2" { focus-workspace "2"; }
      "Mod+3" { focus-workspace "3"; }
      "Mod+4" { focus-workspace "4"; }
      "Mod+5" { focus-workspace "5"; }
      "Mod+Shift+1" { move-window-to-workspace "1"; }
      "Mod+Shift+2" { move-window-to-workspace "2"; }
      "Mod+Shift+3" { move-window-to-workspace "3"; }
      "Mod+Shift+4" { move-window-to-workspace "4"; }
      "Mod+Shift+5" { move-window-to-workspace "5"; }

      "Mod+WheelScrollDown" cooldown-ms=150 { focus-workspace-down; }
      "Mod+WheelScrollUp" cooldown-ms=150 { focus-workspace-up; }
      "Mod+Shift+WheelScrollDown" cooldown-ms=150 { move-window-to-workspace-down; }
      "Mod+Shift+WheelScrollUp" cooldown-ms=150 { move-window-to-workspace-up; }

      "Mod+Comma" { consume-window-into-column; }
      "Mod+Period" { expel-window-from-column; }

      "Mod+N" { focus-column-left; }
      "Mod+E" { focus-window-down; }
      "Mod+I" { focus-window-up; }
      "Mod+O" { focus-column-right; }
      "Mod+Ctrl+N" { move-column-left; }
      "Mod+Ctrl+E" { move-window-down; }
      "Mod+Ctrl+I" { move-window-up; }
      "Mod+Ctrl+O" { move-column-right; }
      "Mod+Shift+N" { set-column-width "-10%"; }
      "Mod+Shift+E" { set-window-height "+10%"; }
      "Mod+Shift+I" { set-window-height "-10%"; }
      "Mod+Shift+O" { set-column-width "+10%"; }

      "Mod+U" { focus-workspace-down; }
      "Mod+Y" { focus-workspace-up; }
      "Mod+Shift+U" { move-window-to-workspace-down; }
      "Mod+Shift+Y" { move-window-to-workspace-up; }
      "Mod+Ctrl+U" { move-workspace-down; }
      "Mod+Ctrl+Y" { move-workspace-up; }

      // toggle input inhibition for stuff like virtual or remote machines
      "Mod+Escape" allow-inhibiting=false { toggle-keyboard-shortcuts-inhibit; }
      
      // special keys
      XF86AudioRaiseVolume allow-when-locked=true { spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.05+ -l 1.0"; }
      XF86AudioLowerVolume allow-when-locked=true { spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.05-"; }
      Shift+XF86AudioRaiseVolume allow-when-locked=true { spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 0.05+ -l 1.0"; }
      Shift+XF86AudioLowerVolume allow-when-locked=true { spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 0.05-"; }
      XF86AudioMute allow-when-locked=true { spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"; }
      Shift+XF86AudioMute allow-when-locked=true { spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"; }
      XF86AudioMicMute allow-when-locked=true { spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"; }
      XF86AudioPlay allow-when-locked=true { spawn-sh "playerctl play-pause"; }
      XF86AudioStop allow-when-locked=true { spawn-sh "playerctl stop"; }
      XF86AudioPrev allow-when-locked=true { spawn-sh "playerctl previous"; }
      XF86AudioNext allow-when-locked=true { spawn-sh "playerctl next"; }
      XF86MonBrightnessUp allow-when-locked=true { spawn-sh "brightnessctl --class=backlight set +10%"; }
      XF86MonBrightnessDown allow-when-locked=true { spawn-sh "brightnessctl --class=backlight set 10%-"; }
      Shift+XF86MonBrightnessUp allow-when-locked=true { spawn-sh "brightnessctl --class=backlight set +1%"; }
      Shift+XF86MonBrightnessDown allow-when-locked=true { spawn-sh "brightnessctl --class=backlight set 1%-"; }
  }
''
