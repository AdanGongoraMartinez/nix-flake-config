{config, ...}: {
  home-manager.users.${config.hostUser} = import ../../../home/proton.nix;
}