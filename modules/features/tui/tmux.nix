{...}: {
  flake.nixosModules.tmux = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/tmux.nix;
  };
}