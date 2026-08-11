{config, ...}: {
  home-manager.users.${config.hostUser} = import ../../../home/lazygit.nix;
}