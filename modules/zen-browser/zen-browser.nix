{
  self,
  inputs,
  ...
}:
{
  flake.nixosModules.zen-browser =
    {
      pkgs,
      ...
    }:
    {
      environment.systemPackages = [
        self.packages.${pkgs.stdenv.hostPlatform.system}.zen-browser
        self.packages.${pkgs.stdenv.hostPlatform.system}.gopen
      ];
    };

  perSystem =
    {
      pkgs,
      lib,
      system,
      ...
    }:
    {
      packages.zen-browser =
        pkgs.wrapFirefox inputs.zen-browser.packages.${system}.zen-browser-unwrapped
          (import ./_config.nix lib);
      packages.gopen = pkgs.writeShellApplication {
        name = "gopen";
        text = builtins.readFile ./gopen.sh;
      };
    };
}
