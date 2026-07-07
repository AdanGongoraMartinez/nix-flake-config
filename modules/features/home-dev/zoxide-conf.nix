{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.zoxide-conf = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.zoxide = {
        enable = true;

        enableFishIntegration = true;
      };
    };
  };
}
