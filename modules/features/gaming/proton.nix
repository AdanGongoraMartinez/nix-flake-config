{...}: {
  flake.nixosModules.proton = {config, ...}: {
    home-manager.users.${config.hostUser} = {pkgs, ...}: {
      home.packages = with pkgs; [
        mangohud
        protonup-ng
        protonup-qt
        protonplus
      ];
    };
  };
}
