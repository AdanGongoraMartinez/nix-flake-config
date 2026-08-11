{
  inputs,
  ...
}: {
  # --------------------------------------------------------------------------
  # homeConfigurations.mainnix — config de usuario PORTABLE (standalone).
  # Sirve para usar esta flake en cualquier distro con Nix instalado:
  #   nix run .#homeConfigurations.mainnix.activationPackage
  #   # o si tienes home-manager CLI:
  #   home-manager switch --flake .#mainnix
  #
  # Solo funciona para x86_64-linux (así está fijado pkgs). Si algún día
  # lo necesitas en otra arquitectura, cambia legacyPackages.<system>.
  # --------------------------------------------------------------------------
  flake.homeConfigurations.mainnix =
    inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;

      extraSpecialArgs = {
        inherit inputs;
      };

      modules = [
        ../../home/default.nix
      ];
    };
}