{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.language-servers = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        # Nix
        nixd
        alejandra

        # Rust
        rust-analyzer
        rustfmt

        # C#
        omnisharp-roslyn

        # Go
        gopls
        gofumpt

        # JavaScript / TypeScript
        typescript-language-server
        prettier

        # TOML
        taplo

        # YAML
        yaml-language-server

        # Python
        pyright
        ruff

        # JSON / HTML / CSS (bundled)
        vscode-langservers-extracted

        # Docker
        dockerfile-language-server
        hadolint

        # Markdown
        marksman

        # Bash
        bash-language-server
      ];
    };
  };
}
