{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.nvf-conf = {
    pkgs,
    lib,
    ...
  }: {
    imports = [inputs.nvf.nixosModules.default];
    programs.nvf = {
      enable = true;

      settings = {
        vim = {
          viAlias = true;

          clipboard.providers = {
            enable = true;
            wl-copy.enable = true;
          };

          theme = {
            enable = true;
            name = "gruvbox";
            style = "dark";
          };

          keymaps = [
            {
              key = "<leader>e";
              mode = "n";
              silent = true;
              action = "<cmd>Oil<CR>";
            }
          ];

          git.enable = true;
          utility.oil-nvim.enable = true;
          binds.whichKey.enable = true;
          statusline.lualine.enable = true;
          telescope.enable = true;

          visuals.blink-indent.enable = true;

          autocomplete.blink-cmp = {
            enable = true;
            friendly-snippets.enable = true;
          };

          diagnostics = {
            enable = true;
            nvim-lint.enable = true;
            nvim-lint.lint_after_save = true;
            config.underline = true;
            config.virtual_text = true;
            config.signs = true;
          };

          languages = {
            enableTreesitter = true;
            nix.enable = true;
          };

          lsp = {
            enable = true;
            formatOnSave = true;
          };
        };
      };
    };
  };
}
