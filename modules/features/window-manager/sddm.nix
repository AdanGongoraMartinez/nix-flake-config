{...}: {
  flake.nixosModules.sddm = {pkgs, ...}: {
    services.displayManager.sddm = {
      enable = true;
      theme = "catppuccin-mocha-mauve";
    };

    environment.systemPackages = [ 
      (pkgs.catppuccin-sddm.override {
        flavor = "mocha";
        accent = "mauve";
      })
    ];
  };
}
