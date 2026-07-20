{
  pkgs,
  lib,
  ...
}: {
  flake.nixosModules.icons = {pkgs, lib, ...}: {
    environment.systemPackages = with pkgs; [
      gruvbox-plus-icons
    ];
  };
}
