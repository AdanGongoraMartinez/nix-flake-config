{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.window-manager = {...}: {
    imports = [
      self.nixosModules.niri
      self.nixosModules.icons
    ];
  };
}
