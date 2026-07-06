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
            scr = pkgs.fishPlugins.grc.src;
          }
        ];
      };
    };
  };
}
