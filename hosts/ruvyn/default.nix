{
  self,
  inputs,
  shared,
  ...
}:
{
  flake.nixosConfigurations.ruvyn = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = { inherit shared; };
    modules = with self.nixosModules; [
      {
        config.style.theme = "celeste";
        config.style.keyboard = "colemak";
      }
      ruvyn-disko
      ruvyn-hardware
      base
      home-manager
      desktop
      terminal
      signal
      zen-browser
    ];
  };
}
