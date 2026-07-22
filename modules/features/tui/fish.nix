{...}: {
  flake.nixosModules.fish = {...}: {
    home-manager.users.nix = {...}: {
      programs.fish = {
        enable = true;

        interactiveShellInit = ''
          set fish_greeting # Disable greeting
        '';
      };
    };
  };
}
