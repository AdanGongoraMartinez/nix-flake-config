{...}: {
  flake.nixosModules.languages = {...}: {
    home-manager.users.nix = {pkgs, ...}: {
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
