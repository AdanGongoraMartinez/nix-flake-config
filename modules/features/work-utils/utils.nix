{...}: {
  flake.nixosModules.utils = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/utils.nix;
  };
}