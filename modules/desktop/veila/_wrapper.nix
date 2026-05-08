inputs:
(inputs.wrappers.lib.evalModule (
  {
    config,
    wlib,
    lib,
    pkgs,
    ...
  }:
  {
    imports = [ wlib.modules.default ];
    options = {
      settings = lib.mkOption {
        type = pkgs.formats.toml.type;
        default = { };
        description = ''
          Configuration of veila.
          See <https://naurissteins.com/veila/docs/configuration>
        '';
      };
    };
    config.flags."--config" = config.constructFiles.generatedConfig.path;
    config.constructFiles.generatedConfig = {
      content = builtins.toJSON config.settings;
      relPath = "${config.binName}-config.toml";
      builder = ''mkdir -p "$(dirname "$2")" && ${pkgs.remarshal}/bin/json2toml "$1" "$2"'';
    };
    config.package = lib.mkDefault pkgs.veila;
  }
))
