{...}: {
  flake.nixosModules.yazi = {...}: {
    home-manager.users.nix = {...}: {
      programs.yazi = {
        enable = true;

        settings = {
          yazi = {
            show_hidden = true;
            sort_dir_first = true;
            sort_by = "natural";
            sort_sensitive = true;
            sort_reverse = false;
            linemode = "none";
          };
        };
      };
    };
  };
}
