{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.browsers = {...}: {
    imports = [
      self.nixosModules.chromium
    ];
  };
}
