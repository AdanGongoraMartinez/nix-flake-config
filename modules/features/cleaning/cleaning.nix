{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.cleaning = {
    pkgs,
    lib,
    ...
  }: {

      nix.gc = {
        automatic = true;
        dates = "weekly";
        options = "--delete-older-than 15d";
      };

      nix.optimise = {
        automatic = true;
        dates = "weekly";
      };

      boot.tmp.cleanOnBoot = true;
  };
}
