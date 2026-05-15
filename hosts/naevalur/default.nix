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
      }
      naevalur-disko
      naevalur-hardware
      base
      home-manager
      desktop
      terminal
      signal
      zen-browser
    ];
  };
}
