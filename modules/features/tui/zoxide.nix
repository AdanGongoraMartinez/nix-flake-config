{...}: {
  flake.nixosModules.zoxide = {...}: {
    home-manager.users.nix = {...}: {
      programs.zoxide = {
        enable = true;

        enableFishIntegration = true;
      };
    };
  };
}
