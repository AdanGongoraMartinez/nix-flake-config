{...}: {
  flake.nixosModules.docker = {...}: {
    virtualisation.docker.enable = true;

    users.users.nix.extraGroups = [ "docker" ];

    virtualisation.docker.rootless = {
      enable = true;
      setSocketVariable = true;
    };

    home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        docker-compose
      ];
    };
  };
}
