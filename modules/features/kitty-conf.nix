{ self, inputs, ... }: {
  flake.nixosModules.kitty-conf = { pkgs, ... }: {
    home-manager.users.nix = { pkgs, ... }: {
      programs.kitty = {
        enable = true;
        themeFile = "gruvbox-dark";
        settings = {
          shell = "fish";
          confirm_os_window_close = 0;
        };
      };
    };
  };
}
