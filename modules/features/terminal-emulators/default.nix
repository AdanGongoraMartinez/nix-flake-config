{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.terminal-emulators = {...}: {
    imports = [
      self.nixosModules.kitty-conf
      self.nixosModules.ghostty
    ];
  };
}
