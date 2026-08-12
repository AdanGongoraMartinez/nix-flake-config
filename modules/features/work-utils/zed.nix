{...}: {
  flake.nixosModules.zed = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/zed.nix;
  };
}