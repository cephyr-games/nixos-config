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
        pkgs.tig
        pkgs.tokei
        pkgs.fzf
        pkgs.ripgrep
        pkgs.fd
        pkgs.bat
        pkgs.dust
      ];
    };
}
