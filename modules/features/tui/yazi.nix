{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.yazi = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
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
