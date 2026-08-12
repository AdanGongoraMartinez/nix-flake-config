{...}: {
  flake.nixosModules.proton = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/proton.nix;
  };
}