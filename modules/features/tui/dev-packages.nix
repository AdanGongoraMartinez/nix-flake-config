{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.dev-packages = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      home.packages = with pkgs; [
        git
        jujutsu
        fastfetch
        wl-clipboard
        nerd-fonts.hack
        opencode
        openfortivpn
        gh
      ];
    };
  };
}
