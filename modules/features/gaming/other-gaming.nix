{...}: {
  flake.nixosModules.other-nix = {config, ...}: {
    home-manager.users.${config.hostUser} = {pkgs, ...}: {
      home.packages = with pkgs; [
        audacity

        yt-dlp
        video-downloader

        haruna
      ];
    };
  };
}
