{
  flake.nixosModules.base =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    {
      environment.systemPackages = [
        pkgs.git
      ];
    };
}
