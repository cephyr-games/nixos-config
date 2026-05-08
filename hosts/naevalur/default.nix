{ self, inputs, ... }:
{
  flake.nixosConfigurations.naevalur = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      (
        { config, ... }:
        {
          config.style.theme = "celeste";
          config.style.keyboard = "colemak";
        }
      )
      naevalur-disko
      naevalur-hardware
      base
      desktop
      terminal
    ];
  };
}
