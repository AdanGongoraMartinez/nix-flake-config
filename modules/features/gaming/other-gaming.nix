{config, ...}: {
  home-manager.users.${config.hostUser} = import ../../../home/other-gaming.nix;
}