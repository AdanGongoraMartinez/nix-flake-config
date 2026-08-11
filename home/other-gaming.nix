{ pkgs, ... }: {
  home.packages = with pkgs; [
    audacity

    yt-dlp
    video-downloader

    haruna
  ];
}