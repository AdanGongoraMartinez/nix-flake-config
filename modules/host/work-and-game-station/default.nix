{
  self,
  inputs,
  ...
}: {
  flake.nixosConfigurations.work-and-game-station = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.work-and-game-station
    ];
  };
}
