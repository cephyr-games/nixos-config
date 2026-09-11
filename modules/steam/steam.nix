{
  flake.nixosModules.steam =
    { pkgs, ... }:
    {
      programs.steam.enable = true;
      environment.systemPackages = [
        (pkgs.olympus.override { celesteWrapper = "steam-run"; })
      ];
    };
}
