{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.home-dev = {...}: {
    imports = [
      self.nixosModules.dev-packages
      self.nixosModules.fish-conf
      self.nixosModules.fish-plugins
      self.nixosModules.helix-conf
      self.nixosModules.kitty-conf
      self.nixosModules.language-servers
      self.nixosModules.languages
      self.nixosModules.lazygit-conf
      self.nixosModules.starship-conf
      self.nixosModules.tmux-conf
      self.nixosModules.yazi-conf
      self.nixosModules.zoxide-conf
    ];
  };
}
