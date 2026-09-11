{
  flake.nixosModules.cad =
    {
      pkgs,
      ...
    }:
    {
      environment.systemPackages = [
        pkgs.freecad-wayland
      ];
    };
}
