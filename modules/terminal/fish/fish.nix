{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.terminal =
    {
      pkgs,
      ...
    }:
    {
      environment.systemPackages = [
        self.packages.${pkgs.stdenv.hostPlatform.system}.fish
      ];
    };

  perSystem =
    {
      pkgs,
      ...
    }:
    {
      packages.fish = inputs.wrapper-modules.wrappers.fish.wrap {
        inherit pkgs;
        configFile.content = builtins.readFile ./config.fish;
        abbreviations = {
          nixos-test = "nixos-rebuild test --flake /etc/nixos";
          nixos-switch = "nixos-rebuild switch --flake /etc/nixos";
        };
      };
    };
}
