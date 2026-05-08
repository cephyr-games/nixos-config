{
  self,
  ...
}:
{
  flake.nixosModules.base =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    {
      fonts.packages = [
        self.packages.${pkgs.stdenv.hostPlatform.system}.mango-font
      ];
    };

  perSystem =
    {
      pkgs,
      lib,
      self',
      ...
    }:
    {
      packages.mango-font = pkgs.stdenvNoCC.mkDerivation {
        pname = "mango-font";
        version = "1.0";
        src = ./Mango.ttf;

        installPhase = ''
          mkdir -p $out/share/fonts/truetype/
          cp -r $src/*.{ttf,otf} $out/share/fonts/truetype/
        '';

        meta = with lib; {
          description = "Mango Font";
          platforms = platforms.all;
        };
      };
    };
}
