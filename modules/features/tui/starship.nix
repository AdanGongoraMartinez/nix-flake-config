{config, ...}: {
  home-manager.users.${config.hostUser} = import ../../../home/starship.nix;
}