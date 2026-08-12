{...}: {
  flake.nixosModules.other-gaming = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/other-gaming.nix;
  };
}