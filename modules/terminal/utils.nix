{
  flake.nixosModules.terminal =
    {
      pkgs,
      ...
    }:
    {
      services.udisks2.enable = true;
      environment.systemPackages = [
        pkgs.btop
        pkgs.tig
        pkgs.python3
        pkgs.typst
        pkgs.tokei
        pkgs.fzf
        pkgs.ripgrep
        pkgs.fd
        pkgs.bat
        pkgs.dust
      ];
    };
}
