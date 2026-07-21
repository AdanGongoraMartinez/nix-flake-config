{...}: {
  flake.nixosModules.utils = {...}: {
    home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        gnome-disk-utility
        gnome-connections
        gnome-pomodoro
        gcolor3
      ];
    };
  };
}
