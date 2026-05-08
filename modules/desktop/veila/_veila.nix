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
        self.packages.${pkgs.stdenv.hostPlatform.system}."veila-${config.style.theme}"
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
        inputs.wrapper-modules.wrappers.lib.wrapPackage (
          {
            config,
            wlib,
            lib,
            ...
          }:
          let
            settings = { };
          in
          {
            inherit pkgs;
            package = pkgs.curl;
            flags."--config" = constructFiles.generatedConfig.path;
            constructFiles.generatedConfig = {
              content = builtins.toJSON settings;
              relPath = "${binName}-config.toml";
              builder = ''mkdir -p "$(dirname "$2")" && ${pkgs.remarshal}/bin/json2toml "$1" "$2"'';
            };
          }
        );
    in
    {
      packages = shared.mkThemeVariants {
        basename = "veila";
        inherit mk;
      };
    };
}
