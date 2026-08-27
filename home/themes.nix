{
  lib,
  ...
}: {
  options.myTheme.name = lib.mkOption {
    type = lib.types.enum ["gruvbox" "catppuccin" "tokyo-night"];
    default = "gruvbox";
    description = "Visual theme for all programs (helix, starship, ghostty, kitty, tmux)";
  };
}
