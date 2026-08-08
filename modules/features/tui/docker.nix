{...}: {
  flake.nixosModules.docker = {config, ...}: {
    virtualisation.docker.enable = true;

    users.users.${config.hostUser}.extraGroups = [ "docker" ];

    virtualisation.docker.rootless = {
      enable = true;
      setSocketVariable = true;
    };

    home-manager.users.${config.hostUser} = {pkgs, ...}: {
      home.packages = with pkgs; [
        docker-compose
      ];
    };
  };
}
