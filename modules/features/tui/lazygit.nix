{...}: {
  flake.nixosModules.lazygit = {...}: {
    home-manager.users.nix = {...}: {
      programs.lazygit = {
        enable = true;
        settings = {
          gui.theme = {
            lightTheme = false;
            activeBorderColor = ["#fabd2f" "bold"];
            inactiveBorderColor = ["#a89984"];
            searchingActiveBorderColor = ["#fabd2f" "bold"];
            optionsTextColor = ["#8ec07c"];
            selectedLineBgColor = ["#3c3836"];
            selectedRangeBgColor = ["#3c3836"];
            cherryPickedCommitBgColor = ["#504945"];
            cherryPickedCommitFgColor = ["#fabd2f"];
            markedBaseCommitBgColor = ["#504945"];
            markedBaseCommitFgColor = ["#fabd2f"];
            unstagedChangesColor = ["#fb4934"];
            defaultFgColor = ["#ebdbb2"];
          };
          nerdFontsVersion = "3";
        };
      };
    };
  };
}
