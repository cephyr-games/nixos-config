{
  self,
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
    {
      environment.systemPackages = [
        pkgs.hyprpicker
        pkgs.wlsunset
        pkgs.xwayland-satellite
        pkgs.grim
        pkgs.slurp
        pkgs.awww
      ];
      programs.niri = {
        enable = true;
        package =
          self.packages.${pkgs.stdenv.hostPlatform.system}."niri-${config.style.keyboard}-${config.style.theme}";
      };
      login.sessionCommand = "niri-session";
    };

  perSystem =
    {
      pkgs,
      lib,
      self',
      ...
    }:
    let
      mk =
        keyboard: theme:
        inputs.wrapper-modules.wrappers.niri.wrap {
          inherit pkgs;
          settings = {
            cursor = {
              hide-after-inactive-ms = 1000;
            };
            overview = {
              zoom = 0.35;
            };
            hotkey-overlay.skip-at-startup = _: { };
            prefer-no-csd = _: { };
            screenshot-path = "~/pictures/screenshots/screenshot_%Y-%m-%d_%H-%M-%S.png";
            animations = {
              slowdown = 0.8;
            };
            workspaces = {
              "1" = _: { };
              "2" = _: { };
              "3" = _: { };
              "4" = _: { };
              "5" = _: { };
            };

            spawn-at-startup = [ ];
            spawn-sh-at-startup = [
              "awww-daemon
              && awww img ${toString ../wallpapers/amora-b-celeste-7.jpg}
              && awww --namespace 'backdrop' img ${toString ../wallpapers/amora-b-celeste-case.jpg}"
            ];
            input = import ./_input.nix;
            layout = import ./_layout.nix shared.themes.${theme};
            binds = import ./_binds.nix keyboard;
            window-rules = [
              {
                geometry-corner-radius = 10;
                clip-to-geometry = true;
              }
            ];
            layer-rules = [
              {
                matches = [ { namespace = "backdrop"; } ];
                place-within-backdrop = true;
              }
            ];
          };
        };
    in
    {
      packages = shared.mkVariants {
        basename = "niri";
        inherit mk;
      };
    };
}
