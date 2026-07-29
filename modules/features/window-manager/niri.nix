{ self, inputs, ... }: {
  flake.nixosModules.niri = { pkgs, ... }: {
    programs.niri = {
      enable = true;
      package = self.packages.${pkgs.stdenv.hostPlatform.system}.myNiri;
    };
  };

  perSystem = { pkgs, lib, self', ... }: {
    packages.myNiri = inputs.wrapper-modules.wrappers.niri.wrap {
      inherit pkgs;
      # libdisplay 0.3 needed
      package = pkgs.niri.override {
        libdisplay-info = pkgs.libdisplay-info.overrideAttrs (finalAttrs: {
          version = "0.3.0";
          src = pkgs.fetchFromGitLab {
            domain = "gitlab.freedesktop.org";
            owner = "emersion";
            repo = "libdisplay-info";
            rev = finalAttrs.version;
            sha256 = "sha256-nXf2KGovNKvcchlHlzKBkAOeySMJXgxMpbi5z9gLrdc=";
          };
        });
      };

      settings = {
        spawn-at-startup = [
          (lib.getExe self'.packages.myNoctalia)
        ];

        xwayland-satellite.path = lib.getExe pkgs.xwayland-satellite;

        input.keyboard.xkb.layout = "latam,us";

        layout.gaps = 5;

        binds = {
          "Mod+Return".spawn-sh = lib.getExe pkgs.kitty;
          "Mod+Q".close-window = {};
          "Mod+S".spawn-sh = "${lib.getExe self'.packages.myNoctalia} ipc call launcher toggle";
        };
      };
    };
  };
}
