{ config, ... }: {
  programs.kitty = {
    enable = true;
    themeFile = {
      gruvbox = "gruvbox-dark";
      catppuccin = "catppuccin-mocha";
      tokyo-night = "tokyo-night";
    }.${config.myTheme.name};
    font = {
      name = "Hack Nerd Font";
      size = 12;
    };
    settings = {
      shell = "fish";
      confirm_os_window_close = 0;
      hide_window_decorations = "yes";
    };
  };
}