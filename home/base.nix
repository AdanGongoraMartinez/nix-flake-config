{ pkgs, ... }: {
  # ---------------------------------------------------------------------
  # Base shared by every home-manager configuration (NixOS or standalone).
  # Portable: only home-manager options, no NixOS options here.
  # ---------------------------------------------------------------------

  # This value determines the Home Manager release that your configuration
  # is compatible with. Keep it in sync with what you use on NixOS.
  home.stateVersion = "26.05"; # Please read the comment before changing.

  nixpkgs.config.allowUnfree = true;

  home.sessionVariables = {
    EDITOR = "hx";
    CHROME_EXECUTABLE = "${pkgs.chromium}/bin/chromium";
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };

  # Make fonts installed via home.packages (e.g. nerd-fonts.hack) show up
  # in applications on non-NixOS systems.
  fonts.fontconfig.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}