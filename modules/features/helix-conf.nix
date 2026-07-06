{ self, inputs, ... }: {
  flake.nixosModules.helix-conf = { pkgs, ... }: {
    home-manager.users.helix = { pkgs, ... }: {
      programs.helix= {
        enable = true;
        settings = {
        theme = "gruvbox";
          editor.cursor-shape = {
            normal = "block";
            insert = "bar";
            select = "underline";
          };
        };

        languages.language = [{
          name = "nix";
          auto-format = true;
          formatter.command = "${pkgs.nxifmt}/bin/nixfmt";
        }]
      };
    };
  };
}
