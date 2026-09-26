{
  flake.nixosModules.blockbench =
    {
      pkgs,
      ...
    }:
    {
      environment.systemPackages = [
        pkgs.blockbench
      ];
    };
}
