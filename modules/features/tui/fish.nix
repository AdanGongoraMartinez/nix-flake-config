{config, ...}: {
  home-manager.users.${config.hostUser} = import ../../../home/fish.nix;
}