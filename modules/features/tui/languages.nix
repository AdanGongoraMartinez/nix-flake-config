{...}: {
  flake.nixosModules.languages = {config, ...}: {
    home-manager.users.${config.hostUser} = {pkgs, ...}: {
      home.packages = with pkgs; [
        nodejs
        go
        flutter
        dotnet-sdk
        cargo
        rustc
        python3
      ];
    };
  };
}
