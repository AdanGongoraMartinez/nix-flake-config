{...}: {
  flake.nixosModules.nh = {...}: {  
    programs.nh = {
      enable = true;
      # clean.enable = true;
      # clean.extraArgs = "--keep-since 4d --keep 3";
      flake = "/home/nix/nix-flake-config"; # sets NH_OS_FLAKE variable for you
    };
  };
}
