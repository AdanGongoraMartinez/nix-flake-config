{...}: {
  flake.nixosModules.dev-packages = {config, ...}: {
    home-manager.users.${config.hostUser} = {pkgs, ...}: {
      home.packages = with pkgs; [
        git
        jujutsu
        fastfetch
        wl-clipboard
        nerd-fonts.hack
        opencode
        openfortivpn
        gh
        btop
        cmatrix
        nh
      ];
    };
  };
}
