{
  self,
  inputs,
  shared,
  ...
}:
{
  flake.nixosConfigurations.naevalur = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = { inherit shared; };
    modules = with self.nixosModules; [
      {
        config.style.theme = "celeste";
        config.style.keyboard = "colemak";
        config.desktop.niri.extra = /* kdl */ ''
          output "eDP-1" {
              mode "2560x1440@120.001"
          }
        '';
      }
      naevalur-disko
      naevalur-hardware
      home-manager
      base
      terminal
      desktop
      steam
      minecraft
      cad
      drawing
    ];
  };
}
