{ ... }: {
  flake.nixosModules.user-options = { lib, ... }: {
    options.hostUser = lib.mkOption {
      type = lib.types.str;
      description = "Username of the main user account for this host.";
    };
  };
}