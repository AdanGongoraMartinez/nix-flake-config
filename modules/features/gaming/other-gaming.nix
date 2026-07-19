{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.other-nix = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        audacity

        yt-dlp
        video-downloader
      ];
    };
  };
}
