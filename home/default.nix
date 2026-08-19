{
  # ---------------------------------------------------------------------------
  # home/default.nix — ENTRADA para home-manager STANDALONE (ej. Fedora).
  #
  # Este archivo NO se usa en NixOS (ahí los hosts usan su propio _home.nix
  # junto con los módulos nixos de features, que importan los mismos archivos
  # de esta carpeta). Aquí montamos la config completa de usuario.
  # ---------------------------------------------------------------------------
  imports = [
    ./themes.nix
    ./base.nix

    # TUI / shell / editor
    ./fish.nix
    ./fish-plugins.nix
    ./helix.nix
    ./starship.nix
    ./lazygit.nix
    ./tmux.nix
    ./yazi.nix
    ./zoxide.nix

    # Paquetes y toolchains
    ./dev-packages.nix
    ./languages.nix
    ./language-servers.nix
    ./docker.nix

    # Terminales
    ./kitty.nix
    ./ghostty.nix

    # Navegador
    # ./chromium.nix

    # Utilidades de trabajo
    # ./utils.nix
    # ./vscode.nix # use only on nixos
    # ./zed.nix

    # Gaming (solo la parte home)
    # ./proton.nix # use flatpak
    # ./obs.nix
    # ./other-gaming.nix
    # use steam blender
  ];

  # ⬇️ AJUSTA a tu usuario real en Fedora (quien ejecuta home-manager)
  home.username = "adan";
  home.homeDirectory = "/home/adan";

  # Archivos sueltos: sirve igual que home.file en NixOS.
  # home.file = {
  #   ".config/foo/bar".text = "hola";
  # };
}
