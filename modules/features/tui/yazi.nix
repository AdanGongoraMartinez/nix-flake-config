{...}: {
  flake.nixosModules.yazi = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/yazi.nix;
  };
}