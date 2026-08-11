{
  # ---------------------------------------------------------------------------
  # home/default.nix — ENTRADA para home-manager STANDALONE (ej. Fedora).
  #
  # Este archivo NO se usa en NixOS (ahí los hosts usan su propio _home.nix
  # junto con los módulos nixos de features, que importan los mismos archivos
  # de esta carpeta). Aquí montamos la config completa de usuario.
  #
  # HOME-MANAGER STANDALONE en Fedora:
  #   nix run .#homeConfigurations.mainnix.activationPackage
  #   # o, con home-manager instalado:
  #   home-manager switch --flake .#mainnix
  # ---------------------------------------------------------------------------
  imports = [
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
    ./chromium.nix

    # Utilidades de trabajo
    ./utils.nix
    # ./vscode.nix
    # ./zed.nix

    # Gaming (solo la parte home)
    ./proton.nix
    ./obs.nix
    ./other-gaming.nix
  ];

  # ⬇️ AJUSTA a tu usuario real en Fedora (quien ejecuta home-manager)
  home.username = "adan";
  home.homeDirectory = "/home/adan";

  # Archivos sueltos: sirve igual que home.file en NixOS.
  # home.file = {
  #   ".config/foo/bar".text = "hola";
  # };
}