{
  flake.nixosModules.terminal =
    {
      pkgs,
      ...
    }:
    {
      services.udisks2.enable = true;
      environment.systemPackages = with pkgs; [
        bat
        dust
        tree
        fd
        jq
        fzf
        python3
        ripgrep
        tig
        tokei
      ];
    };
}
