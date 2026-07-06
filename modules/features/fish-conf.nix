{ self, inputs, ... }: {
  flake.nixosModules.fish-conf = { pkgs, ... }: {
    home-manager.users.nix = { pkgs, ... }: {
      programs.fish = {
        enable = true;

        interactiveShellInit = ''
          set fish_greeting # Disable greeting
        '';

        plugins = [
          {
            name = "grc";
            src = pkgs.fishPlugins.grc.src;
          }
          {
            name = "fzf-fish";
            src = pkgs.fishPlugins.fzf-fish.src;
          }
          {
            name = "done";
            src = pkgs.fishPlugins.done.src;
          }
          {
            name = "forgit";
            src = pkgs.fishPlugins.forgit.src;
          }
          {
            name = "hydro";
            src = pkgs.fishPlugins.hydro.src;
          }
        ];
      };
    };
  };
}
