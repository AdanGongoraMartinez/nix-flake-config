{
  self,
  inputs,
  ...
}: {
  flake.nixosConfigurations.myDevMachine = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.myDevMachineConfiguration
    ];
  };
}
