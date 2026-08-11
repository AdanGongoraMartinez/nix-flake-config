{config, ...}: {
  home-manager.users.${config.hostUser} = import ../../../home/helix.nix;
}