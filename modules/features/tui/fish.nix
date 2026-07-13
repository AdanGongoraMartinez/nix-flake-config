{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.fish = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.fish = {
        enable = true;

        interactiveShellInit = ''
          set fish_greeting # Disable greeting
        '';
      };
    };
  };
}
