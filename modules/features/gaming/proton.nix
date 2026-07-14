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

      environment.sessionVariables = {
        STEAM_EXTRA_COMPAT_TOOLS_PATHS =
          "\${HOME}/.steam/root/compatibilitytools.d";
      };
    };
  };
}
