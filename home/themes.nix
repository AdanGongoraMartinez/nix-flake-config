{
  lib,
  pkgs,
  ...
}: {
  options.myTheme.name = lib.mkOption {
    type = lib.types.enum ["gruvbox" "catppuccin" "tokyo-night"];
    default = "gruvbox";
    description = "Visual theme for all programs (helix, starship, ghostty, kitty, tmux)";
  };

  config.myTheme.tmux = {
    plugin = {
      gruvbox = pkgs.tmuxPlugins.gruvbox;
      catppuccin = pkgs.tmuxPlugins.catppuccin;
      tokyo-night = pkgs.tmuxPlugins.tokyo-night-tmux;
    }.${config.myTheme.name};

    pluginExtraConfig = {
      gruvbox = "set -g @tmux-gruvbox 'dark256'";
      catppuccin = "";
      tokyo-night = "";
    }.${config.myTheme.name};

    extraConfig = {
      gruvbox = "";
      catppuccin = "";
      tokyo-night = "";
    }.${config.myTheme.name};
  };
}
