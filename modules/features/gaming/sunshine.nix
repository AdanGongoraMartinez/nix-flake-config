{...}: {
  flake.nixosModules.sunshine = {...}: {
    services.sunshine = {
      enable = true;
      autoStart = false;  # inicio manual
      capSysAdmin = true;
      openFirewall = true;
    };
  };
}
