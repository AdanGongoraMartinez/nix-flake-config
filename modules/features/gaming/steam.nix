{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.steam = {
    pkgs,
    lib,
    ...
  }: {

    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };

    services.xserver.videoDrivers = ["amdgpu"];

    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      gamescope.enable = true;
    };

    programs.gamemode.enable = true;
  };
}
