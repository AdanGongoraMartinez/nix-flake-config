{...}: {
  flake.nixosModules.zoxide = {config, ...}: {
    home-manager.users.${config.hostUser} = {...}: {
      programs.zoxide = {
        enable = true;

        enableFishIntegration = true;
      };
    };
  };
}
