{...}: {
  flake.nixosModules.vscode = {...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.vscode = {
        enable = true;
        profiles.default.extensions = with pkgs.vscode-extensions; [
          jdinhlife.gruvbox
          vscodevim.vim
          yzhang.markdown-all-in-one
          bbenoist.nix
          aaron-bond.better-comments
        ];
      };
    };
  };
}
