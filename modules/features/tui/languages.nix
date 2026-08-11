{config, ...}: {
  home-manager.users.${config.hostUser} = import ../../../home/languages.nix;
}