{ self, inputs, ... }: {
  flake.nixosModules.tmux-conf = { pkgs, ... }: {
    home-manager.users.nix = { pkgs, ... }: {
      programs.tmux = {
        enable = true;
        shell = "${pkgs.fish}/bin/fish";
        terminal = "tmux-256color";
        historyLimit = 100000;
      };
    };
  };
}
