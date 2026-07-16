{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.fish-plugins = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        fzf
        grc
        fd
        bat
        fishPlugins.grc
        fishPlugins.fzf-fish
        fishPlugins.done
        fishPlugins.forgit
      ];
    };
  };
}
