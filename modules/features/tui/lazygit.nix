{...}: {
  flake.nixosModules.lazygit = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/lazygit.nix;
  };
}