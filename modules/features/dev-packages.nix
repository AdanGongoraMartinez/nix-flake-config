{ self, inputs, ... }: {
  flake.nixosModules.dev-packages = { pkgs, ... }: {
    home-manager.users.nix = { pkgs, ... }: {
      home.packages = with pkgs; [
        git
        lazygit
        jujutsu
        yazi
        fastfetch
        wl-clipboard
        nerd-fonts.hack
        opencode
      ];
    };
  };
}
