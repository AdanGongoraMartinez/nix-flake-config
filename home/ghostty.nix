{ pkgs, config, ... }: {
  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty; # Linux binary

    enableFishIntegration = true;

    settings = {
      command = "${pkgs.fish}/bin/fish";
      theme = {
        gruvbox = "Gruvbox Dark";
        catppuccin = "Catppuccin Mocha";
        tokyo-night = "Tokyo Night";
      }.${config.myTheme.name};
      font-family = "JetBrainsMono Nerd Font";
      font-size = 12;
    };
  };
}