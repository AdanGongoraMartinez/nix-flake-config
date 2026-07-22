{self, ...}: {
  flake.nixosModules.browsers = {...}: {
    imports = [
      self.nixosModules.chromium
    ];
  };
}
