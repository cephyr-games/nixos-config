{ self, inputs, ... }:
{
  flake.nixosConfigurations.ruvyn = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      (
        { config, ... }:
        {
          config.style.theme = "celeste";
          config.style.keyboard = "qwerty";
        }
      )
      ruvyn-disko
      ruvyn-hardware
      base
      desktop
      terminal
    ];
  };
}
