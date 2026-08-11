{config, ...}: {
  home-manager.users.${config.hostUser} = import ../../../home/tmux.nix;
}