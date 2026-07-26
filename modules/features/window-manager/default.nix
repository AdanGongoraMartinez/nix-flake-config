{self, ...}: {
  flake.nixosModules.window-manager = {...}: {
    imports = [
      self.nixosModules.niri
      self.nixosModules.icons
      self.nixosModules.sddm
    ];
  };
}
