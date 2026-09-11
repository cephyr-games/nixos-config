{
  config,
  theme,
  ...
}:
/* kdl */ ''
  ${config.desktop.niri.extra}
  ${import ./_binds.nix { inherit theme; }}
  ${import ./_layout.nix { inherit theme; }}
  ${import ./_rules.nix { inherit theme; }}
  ${import ./_animations.nix}
  ${import ./_input.nix}

  spawn-at-startup "waybar"
  spawn-at-startup "mako"
  spawn-at-startup "niri-overview-handler"

  screenshot-path "~/pictures/screenshots/screenshot_%Y-%m-%d_%H-%M-%S.png"

  // no client side decorations
  prefer-no-csd

  workspace "1"
  workspace "2"
  workspace "3"
  workspace "4"
  workspace "5"

  cursor {
      xcursor-theme "BreezeX-RosePine-Linux"
      xcursor-size 24
      hide-when-typing
      hide-after-inactive-ms 1000
  }

  overview {
      zoom 0.35
      workspace-shadow {
          softness 40
          spread 10
          offset x=0 y=10
          color "#${theme.darkBase}50"
      }
  }

  gestures {
      hot-corners {
          off
      }
  }
  hotkey-overlay {
      skip-at-startup
  }
  switch-events {
      lid-close { spawn "veila" "lock" "--wait-ready"; }
  }
''
