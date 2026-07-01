{ self, inputs, ... }: {
  flake.nixosModules.nvf-conf = { pkgs, lib, ... }: {
    imports = [ inputs.nvf.nixosModules.default ];
    programs.nvf = {
      enable = true;

      settings = {
        vim = {
	  viAlias = true;

	  theme = {
	    enable = true;
	    name = "gruvbox";
	    style = "dark";
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
