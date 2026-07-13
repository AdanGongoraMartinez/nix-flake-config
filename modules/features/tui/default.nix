{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.tui = {...}: {
    imports = [
      self.nixosModules.dev-packages
      self.nixosModules.fish
      self.nixosModules.fish-plugins
      self.nixosModules.helix
      self.nixosModules.kitty
      self.nixosModules.language-servers
      self.nixosModules.languages
      self.nixosModules.lazygit
      self.nixosModules.starship
      self.nixosModules.tmux
      self.nixosModules.yazi
      self.nixosModules.zoxide
    ];
  };
}
