{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.gaming = {...}: {
    imports = [
      self.nixosModules.obs
      self.nixosModules.proton
      self.nixosModules.steam
    ];
  };
}
