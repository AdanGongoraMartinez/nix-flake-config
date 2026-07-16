{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.vscode = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.vscode = {
        enable = true;
        extensions = with pkgs.vscode-extensions; [
          dracula-theme.theme-dracula
          vscodevim.vim
          yzhang.markdown-all-in-one
        ];
      };
    };
  };
}
