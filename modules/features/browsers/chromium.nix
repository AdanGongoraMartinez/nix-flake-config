{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.chromium = {pkgs, ...}: {
    programs.chromium = {
      enable = true;
      extensions = [
        "cjpalhdlnbpafiamejdnhcphjbkeiagm;https://clients2.google.com/service/update2/crx" # ublock origin
        "eimadpbcbfnmbkopoojfekhnkhdbieeh;https://clients2.google.com/service/update2/crx" # dark reader
      ];
      # extraOpts = {
      #   "WebAppInstallForceList" = [
      #     {
      #       "custom_name" = "Youtube";
      #       "create_desktop_shortcut" = false;
      #       "default_launch_container" = "window";
      #       "url" = "https://youtube.com";
      #     }
      #   ];
      # };
     };
     home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        chromium
      ];
    };
  };
}
