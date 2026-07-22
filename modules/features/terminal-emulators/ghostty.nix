{...}: {
  flake.nixosModules.ghostty = {...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.ghostty = {
        enable = true;
        package = pkgs.ghostty; # Linux binary

        enableFishIntegration = true;

        settings = {
          command = "${pkgs.fish}/bin/fish";
          theme = "Gruvbox Dark";
          font-family = "Hack Nerd Font";
          font-size = 12;
        };
      };
    };
  };
}
