{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.sunshine = {
    pkgs,
    lib,
    ...
  }: {

    services.sunshine = {
      enable = true;
      autoStart = false;  # inicio manual
      capSysAdmin = true;
      openFirewall = true;
    };
  };
}
