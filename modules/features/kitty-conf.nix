{ self, inputs, ... }: {
  flake.nixosModules.kitty-conf = { pkgs, ... }: {
    home-manager.users.nix = { pkgs, ... }: {
      programs.kitty = {
        enable = true;
        themeFile = "Gruvbox Dark";
        settings = {
          confirm_os_window_close = 0;
        };
      };
    };
  };
}
