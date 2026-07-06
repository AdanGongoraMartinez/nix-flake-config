{ self, inputs, ... }: {
  flake.nixosModules.fish-plugins = { pkgs, ... }: {
    home-manager.users.nix = { pkgs, ... }: {
      home.packages = with pkgs; [
        fzf
        fishPlugins.fzf-fish
        grc
        fishPlugins.grc
        fishPlugins.done
        fishPlugins.forgit
        fishPlugins.hydro
      ];
    };
  };
}
