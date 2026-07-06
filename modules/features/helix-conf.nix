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

          editor.indent-guides.render = true;
          editor.file-picker.hidden = true;
          editor.soft-wrap.enable = true;

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
