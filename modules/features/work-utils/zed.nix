{...}: {
  flake.nixosModules.zed = {...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.zed-editor = {
        enable = true;
        extensions = [ "nix" "toml" "rust" ];
        userSettings = {
          theme = {
            mode = "system";
            dark = "Gruvbox Dark";
            light = "Gruvbox Light";
          };
          hour_format = "hour24";
          vim_mode = true;
        };
      };

      home.packages = with pkgs; [
        zed-editor
      ];
    };
  };
}
