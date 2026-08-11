{config, ...}: {
  home-manager.users.${config.hostUser} = import ../../../home/dev-packages.nix;
}