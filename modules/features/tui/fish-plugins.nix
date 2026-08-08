{...}: {
  flake.nixosModules.fish-plugins = {config, ...}: {
    home-manager.users.${config.hostUser} = {pkgs, ...}: {
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
