{self, ...}: {
  flake.nixosModules.terminal-emulators = {...}: {
    imports = [
      self.nixosModules.kitty
      self.nixosModules.ghostty
    ];
  };
}
