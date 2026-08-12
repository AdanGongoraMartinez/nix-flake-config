{...}: {
  flake.nixosModules.ghostty = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/ghostty.nix;
  };
}