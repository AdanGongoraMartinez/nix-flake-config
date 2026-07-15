{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.proton = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        mangohud
        protonup
        protonup-qt
      ];
    };
  };
}
