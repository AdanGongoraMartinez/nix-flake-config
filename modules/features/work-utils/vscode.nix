{...}: {
  flake.nixosModules.vscode = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/vscode.nix;
  };
}