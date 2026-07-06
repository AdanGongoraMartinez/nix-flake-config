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

        extraConfig = ''
          set -g status-position top
          set -g mode-keys vi
          bind -n M-Left  select-pane -L
          bind -n M-Right select-pane -R
          bind -n M-Up    select-pane -U
          bind -n M-Down  select-pane -D
          bind -n M-n     next-window
          bind -n M-p     previous-window
          bind '\'         split-window -h
          bind -         split-window -v
        '';
      };
    };
  };
}
