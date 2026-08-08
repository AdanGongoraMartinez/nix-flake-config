{...}: {
  flake.nixosModules.fish = {config, ...}: {
    home-manager.users.${config.hostUser} = {...}: {
      programs.fish = {
        enable = true;

        interactiveShellInit = ''
          set fish_greeting # Disable greeting
        '';
      };
    };
  };
}
