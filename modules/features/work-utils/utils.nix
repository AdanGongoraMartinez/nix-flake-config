{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.utils = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        gnome-disk-utility
        gnome-connections
        rustdesk
        gcolor3
      ];
    };
  };
}
