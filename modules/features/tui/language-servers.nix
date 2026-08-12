{...}: {
  flake.nixosModules.language-servers = {config, ...}: {
    home-manager.users.${config.hostUser} = import ../../../home/language-servers.nix;
  };
}