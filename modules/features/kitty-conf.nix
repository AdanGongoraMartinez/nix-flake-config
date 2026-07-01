{ self, inputs, ... }: {
  flake.nixosModules.kitty-conf = { pkgs, lib, ... }: {
    environment.systemPackages = [ pkgs.kitty ];

    environment.etc."kitty/kitty.conf".text = ''
      confirm_os_window_close 0
      theme Gruvbox Dark
    '';
  };
}
