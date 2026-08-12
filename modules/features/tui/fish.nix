{...}: {
  flake.nixosModules.fish = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/fish.nix;
  };
}