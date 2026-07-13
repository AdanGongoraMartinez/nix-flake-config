{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.zoxide = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.zoxide = {
        enable = true;

        enableFishIntegration = true;
      };
    };
  };
}
