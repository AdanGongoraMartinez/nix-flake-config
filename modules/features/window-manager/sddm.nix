{inputs, ...}: {
  flake.nixosModules.sddm = {pkgs, ...}: {
    imports = [
      inputs.qylock.nixosModules.default
    ];

    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };

    programs.qylock = {
      enable = true;
      theme = "nier-automata";
      # sddm.enable = true;         # installs theme + sets it active (default)
      quickshell.enable = false;   # adds `qylock-lock` to PATH (default)

      # themeOptions = {
      #   # optional per-theme tweaks
      #   # e.g. clockwork.orbital = { themeMode = "dark"; enableWindup = true; };
      # };
    };
  };
}
