{...}: {
  flake.nixosModules.other-nix = {...}: {
    home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        audacity

        yt-dlp
        video-downloader

        haruna
      ];
    };
  };
}
