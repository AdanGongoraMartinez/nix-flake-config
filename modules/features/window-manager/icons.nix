{...}: {
  flake.nixosModules.icons = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [
      gruvbox-plus-icons
    ];
  };
}
