{ self, inputs, ... }: {
  flake.nixosModules.languages = { pkgs, ... }: {
    home-manager.users.nix = { pkgs, ... }: {
      home.packages = with pkgs; [
        node
        rust
        go
        dart
        flutter
      ];
    };
  };
}
