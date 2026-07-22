{...}: {
  flake.nixosModules.proton = {...}: {
    home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        mangohud
        protonup-ng
        protonup-qt
      ];
    };
  };
}
