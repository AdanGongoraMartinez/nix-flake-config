{config, ...}: {
  home-manager.users.${config.hostUser} = import ../../../home/obs.nix;
}