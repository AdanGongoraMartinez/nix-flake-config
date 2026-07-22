{self, ...}: {
  flake.nixosModules.work-utils = {...}: {
    imports = [
      self.nixosModules.utils
      self.nixosModules.zed
      # self.nixosModules.vscode
    ];
  };
}
