{...}: {
  flake.nixosModules.dev-packages = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/dev-packages.nix;
  };
}