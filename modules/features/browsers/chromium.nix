{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.chromium = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.chromium = {
        enable = true;
        extensions = [
          "cjpalhdlnbpafiamejdnhcphjbkeiagm;https://clients2.google.com/service/update2/crx" # ublock origin
          "eimadpbcbfnmbkopoojfekhnkhdbieeh;https://clients2.google.com/service/update2/crx" # dark reader
        ];
      };
    };
  };
}
