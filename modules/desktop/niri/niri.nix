{
  inputs,
  shared,
  ...
}:
{
  flake.nixosModules.desktop =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    let
      theme = shared.themes.${config.style.theme};
    in
    {
      options.desktop.niri = {
        extra = lib.mkOption {
          type = lib.types.str;
          default = "";
          description = "Extra kdl settings";
        };
      };

      config = {
        environment.systemPackages = [
          pkgs.awww
          pkgs.rose-pine-cursor

          pkgs.brightnessctl
          pkgs.playerctl
          pkgs.pavucontrol

          pkgs.swayidle
          pkgs.mako
          pkgs.xwayland-satellite

          pkgs.wl-clipboard
          pkgs.wl-mirror
          pkgs.wlsunset

          pkgs.hyprpicker
          pkgs.chameleos
          pkgs.feh

          (pkgs.writeShellApplication {
            name = "niri-toggle-chamel";
            runtimeInputs = with pkgs; [
              chameleos
              procps
            ];
            text = ''
              set -euo pipefail
              color="''${1:-#ff3065}"
              if pgrep chameleos > /dev/null 2>&1; then
                pkill chameleos
              else
                chameleos --stroke-color "$color" --stroke-width 5 &
                sleep 0.1
                chamel toggle
              fi
            '';
          })
          (pkgs.writeShellApplication {
            name = "niri-overview-handler";
            runtimeInputs = [
              pkgs.niri
              pkgs.jq
              pkgs.awww
            ];

            text = ''
              niri msg --json event-stream | jq --unbuffered -r 'select(.OverviewOpenedOrClosed != null) | .OverviewOpenedOrClosed.is_open' |
                while read -r is_open; do
                  if [[ "$is_open" == "true" ]]; then
                    # Overview entered
                    awww img -t outer --transition-duration 0.4 ${theme.wallpaper-overview} || true
                  else
                    # Overview exited
                    awww img -t center --transition-duration 0.4 ${theme.wallpaper} || true
                  fi
                done
            '';
          })
        ];

        programs.niri = {
          enable = true;
          package = inputs.wrapper-modules.wrappers.niri.wrap {
            inherit pkgs;
            "config.kdl" = {
              content = import ./_config.nix {
                inherit lib config theme;
              };
            };
          };
        };

        systemd.user.services = {
          awww = {
            partOf = [ "graphical-session.target" ];
            after = [ "graphical-session.target" ];
            requisite = [ "graphical-session.target" ];
            wantedBy = [ "niri.service" ];
            serviceConfig = {
              Type = "simple";
              ExecStart = "${lib.getExe' pkgs.awww "awww-daemon"}";
            };
          };
          wallpaper = {
            partOf = [ "awww.service" ];
            after = [ "awww.service" ];
            wantedBy = [ "niri.service" ];
            serviceConfig = {
              Type = "oneshot";
              ExecStart = pkgs.writeShellScript "wallpaper" ''
                max_retries=60
                retry=0
                sleep 0.02
                while ! ${lib.getExe' pkgs.awww "awww"} img -t fade --transition-duration 0.5 ${theme.wallpaper}; do
                  retry=$((retry + 1))
                  if [ "$retry" -ge "$max_retries" ]; then
                    exit 1
                  fi
                  sleep 0.02
                done
              '';
            };
          };
          swayidle = {
            partOf = [ "graphical-session.target" ];
            after = [ "graphical-session.target" ];
            requisite = [ "graphical-session.target" ];
            wantedBy = [ "niri.service" ];
            serviceConfig = {
              Type = "simple";
              ExecStart = "${lib.getExe pkgs.swayidle} -w timeout 300 'veila lock --wait-ready' timeout 500 'niri msg action power-off-monitors' timeout 600 'systemctl suspend'";
            };
          };
        };

        login.sessionCommand = "niri-session";
      };
    };
}
