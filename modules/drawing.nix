{
  flake.nixosModules.drawing =
    {
      pkgs,
      ...
    }:
    {
      environment.systemPackages = [
        pkgs.pixelorama
      ];
    };
}
