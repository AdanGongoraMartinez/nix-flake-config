{ pkgs, config, lib, ... }:

let
  themeCfg = {
    gruvbox = {
      plugin = pkgs.tmuxPlugins.gruvbox;
      pluginExtraConfig = "set -g @tmux-gruvbox 'dark256'";
      extraConfig = "";
    };
    catppuccin = {
      plugin = pkgs.tmuxPlugins.catppuccin;
      pluginExtraConfig = "";
      extraConfig = "";
    };
    tokyo-night = {
      plugin = pkgs.tmuxPlugins.tokyo-night-tmux;
      pluginExtraConfig = "";
      extraConfig = "";
    };
 }.${config.myTheme.name};
in {
  home.packages = with pkgs; [tmuxifier];

  programs.tmux = {
    enable = true;
    shell = "${pkgs.fish}/bin/fish";
    terminal = "tmux-256color";
    historyLimit = 100000;
    mouse = true;

    plugins = lib.optionals (themeCfg.plugin != null) [
      {
        plugin = themeCfg.plugin;
        extraConfig = themeCfg.pluginExtraConfig;
      }
    ];

    extraConfig = ''
      # extended keys
      set -g extended-keys on
      set -g extended-keys-format csi-u

      # Copy Mode (vi)
      set -g status-position top
      set -g mode-keys vi
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

      bind v copy-mode
      bind -n M-Left  select-pane -L
      bind -n M-Right select-pane -R
      bind -n M-Up    select-pane -U
      bind -n M-Down  select-pane -D
      bind -n M-n     next-window
      bind -n M-p     previous-window
      bind '\'        split-window -h
      bind -          split-window -v
    '' + themeCfg.extraConfig;
  };
}
