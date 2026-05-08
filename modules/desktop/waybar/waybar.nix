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
        self.packages.${pkgs.stdenv.hostPlatform.system}."waybar-${config.style.theme}"
      ];
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
        theme:
        inputs.wrapper-modules.wrappers.waybar.wrap {
          inherit pkgs;
          settings = import ./_config.nix shared.themes.${theme};
          "style.css".content =
            import ./_style.nix {
              theme = shared.themes.${theme};
              logo_url = toString ./nix_logo.png;
            }
            + builtins.readFile ./style.css;
        };
    in
    {
      packages = shared.mkThemeVariants {
        basename = "waybar";
        inherit mk;
      };
    };
}
