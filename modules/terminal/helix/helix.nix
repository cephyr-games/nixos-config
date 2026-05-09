{
  self,
  inputs,
  shared,
  ...
}:
{
  flake.nixosModules.terminal =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    {
      environment.systemPackages = [
        self.packages.${pkgs.stdenv.hostPlatform.system}."helix-${config.style.keyboard}-${config.style.theme}"
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
        keyboard: theme:
        inputs.wrapper-modules.wrappers.helix.wrap {
          inherit pkgs;
          settings = import ./_config.nix {
            inherit lib;
            inherit keyboard;
          };
          languages = import ./_languages.nix;
          themes = import ./_themes.nix shared.themes.${theme};
        };
    in
    {
      packages = shared.mkVariants {
        basename = "helix";
        inherit mk;
      };
    };
}
