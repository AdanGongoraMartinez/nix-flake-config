{ self, inputs, ... }: {
  flake.nixosModules.language-servers = { pkgs, ... }: {
    home-manager.users.nix = { pkgs, ... }: {
      home.packages = with pkgs; [
        nil
        nixfmt
      ];
    };
  };
}
