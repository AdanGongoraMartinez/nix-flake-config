{
  pkgs,
  lib,
  ...
}: {
  flake.nixosModules.theming = {pkgs, lib, ...}: {
    environment.systemPackages = with pkgs; [
      gruvbox-plus-icons
    ];

    # home-manager.users.nix = {pkgs, ...}: {
    #   gtk = {
    #     enable = true;
    #     iconTheme = {
    #       package = pkgs.gruvbox-plus-icons;
    #       name = "Gruvbox-Plus-Dark";
    #     };
    #   };

    #   qt = {
    #     enable = true;
    #     platformTheme.name = "kde";
    #     style = {
    #       name = "breeze";
    #       package = pkgs.kdePackages.breeze;
    #     };
    #   };

    #   home.file.".config/kdeglobals".text = ''
    #     [General]
    #     ColorScheme=BreezeDark

    #     [Icons]
    #     Theme=Gruvbox-Plus-Dark
    #   '';
    # };
  };
}
