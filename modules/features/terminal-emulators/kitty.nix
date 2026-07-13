{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.kitty = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.kitty = {
        enable = true;
        themeFile = "gruvbox-dark";
        font = {
          name = "Hack Nerd Font";
          size = 12;
        };
        settings = {
          shell = "fish";
          confirm_os_window_close = 0;
        };
      };
    };
  };
}
