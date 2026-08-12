{...}: {
  flake.nixosModules.kitty = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/kitty.nix;
  };
}