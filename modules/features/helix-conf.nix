{ self, inputs, ... }: {
  flake.nixosModules.helix-conf = { pkgs, ... }: {
    home-manager.users.nix = { pkgs, ... }: {
      programs.helix = {
        enable = true;
        settings = {
          theme = "gruvbox";

          editor.cursor-shape = {
            normal = "block";
            insert = "bar";
            select = "underline";
          };

          editor = {
            line-number = "relative";
            cursorline = true;
            color-modes = true;
            indent-guides.render = true;
            file-picker.hidden = true;
            soft-wrap.enable = true;
          };

          keys.normal = {
            "D" = "@vgld";
            "C-q" = ":bc";
            "C-d" = [
              "half_page_down"
              "align_view_center"
            ];
            "C-u" = [
              "half_page_up"
              "align_view_center"
            ];
          };
        };

        languages.language = [
          {
            name = "nix";
            auto-format = true;
            formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
          }
        ];
      };
    };
  };
}
