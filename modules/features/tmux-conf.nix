{ self, inputs, ... }: {
  flake.nixosModules.tmux-conf = { pkgs, ... }: {
    home-manager.users.nix = { pkgs, ... }: {
      programs.tmux = {
        enable = true;
        shell = "${pkgs.fish}/bin/fish";
        terminal = "tmux-256color";
        historyLimit = 100000;

        plugins = with pkgs; [
          {
            plugin = tmuxPlugins.gruvbox;
            extraConfig = "set -g @tmux-gruvbox 'dark256'";
          }
        ];

        extraConfig = "";
      };
    };
  };
}
