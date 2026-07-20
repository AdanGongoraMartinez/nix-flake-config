{...}: {
  flake.nixosModules.zed = {...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.zed= {
        enable = true;
      };
    };
  };
}
