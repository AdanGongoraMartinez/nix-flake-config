{...}: {
  flake.nixosModules.utils = {config, ...}: {
    home-manager.users.${config.hostUser} = {pkgs, ...}: {
      home.packages = with pkgs; [
        gnome-disk-utility
        gnome-connections
        gnome-pomodoro
        gcolor3
      ];
    };
  };
}
