{...}: {
  flake.nixosModules.zoxide = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/zoxide.nix;
  };
}