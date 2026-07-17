{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.helix = {pkgs, ...}: {
    home-manager.users.nix = {pkgs, ...}: {
      programs.helix = {
        enable = true;
        settings = {
          theme = "gruvbox";

          editor.cursor-shape = {
            normal = "block";
            insert = "bar";
            select = "underline";
          };
          
          editor.inline-diagnostics = {
            cursor-line = "hint";
            other-lines = "warning";
          };

          editor = {
            line-number = "relative";
            cursorline = true;
            color-modes = true;
            indent-guides.render = true;
            file-picker.hidden = true;
            soft-wrap.enable = true;
          };

          keys.normal = {
            "D" = "@vgld";
            "C-q" = ":bc";
            "C-d" = [
              "half_page_down"
              "align_view_center"
            ];
            "C-u" = [
              "half_page_up"
              "align_view_center"
            ];
            "C-y" = [
              ':sh rm -f /tmp/unique-file'
              ':insert-output yazi "%{buffer_name}" --chooser-file=/tmp/unique-file'
              ':sh printf "\x1b[?1049h\x1b[?2004h" > /dev/tty'
              ':open %sh{cat /tmp/unique-file}'
              ':redraw'
            ];
          };
        };

        languages = {
          language = [
            {
              name = "nix";
              auto-format = true;
              formatter.command = "${pkgs.alejandra}/bin/alejandra";
              language-servers = ["nixd"];
            }
            {
              name = "rust";
              auto-format = true;
              formatter.command = "${pkgs.rustfmt}/bin/rustfmt";
              language-servers = ["rust-analyzer"];
            }
            {
              name = "go";
              auto-format = true;
              formatter.command = "${pkgs.gofumpt}/bin/gofumpt";
              language-servers = ["gopls"];
            }
            {
              name = "python";
              auto-format = true;
              formatter = {
                command = "${pkgs.ruff}/bin/ruff";
                args = ["format"];
              };
              language-servers = ["pyright"];
            }
            {
              name = "typescript";
              auto-format = true;
              formatter.command = "${pkgs.prettier}/bin/prettier";
              language-servers = ["typescript-language-server"];
            }
            {
              name = "javascript";
              auto-format = true;
              formatter.command = "${pkgs.prettier}/bin/prettier";
              language-servers = ["typescript-language-server"];
            }
            {
              name = "json";
              auto-format = true;
              formatter.command = "${pkgs.prettier}/bin/prettier";
              language-servers = ["vscode-json-language-server"];
            }
            {
              name = "html";
              auto-format = true;
              formatter.command = "${pkgs.prettier}/bin/prettier";
              language-servers = ["vscode-html-language-server"];
            }
            {
              name = "css";
              auto-format = true;
              formatter.command = "${pkgs.prettier}/bin/prettier";
              language-servers = ["vscode-css-language-server"];
            }
            {
              name = "toml";
              auto-format = true;
              language-servers = ["taplo"];
            }
            {
              name = "yaml";
              auto-format = true;
              language-servers = ["yaml-language-server"];
            }
            {
              name = "c-sharp";
              auto-format = true;
              language-servers = ["omnisharp"];
            }
            {
              name = "dockerfile";
              auto-format = true;
              language-servers = ["dockerfile-language-server"];
            }
            {
              name = "bash";
              auto-format = true;
              language-servers = ["bash-language-server"];
            }
            {
              name = "awk";
              auto-format = true;
              formatter = {
                command = "${pkgs.gawk}/bin/awk";
                timeout = 5;
                args = ["--file=/dev/stdin" "--pretty-print=/dev/stdout"];
              };
            }
            {
              name = "markdown";
              auto-format = true;
              formatter = {
                command = "${pkgs.prettier}/bin/prettier";
                args = ["--parser" "markdown"];
              };
              language-servers = ["marksman"];
            }
          ];
          language-server = {
            nixd = {
              command = "${pkgs.nixd}/bin/nixd";
            };
            rust-analyzer = {
              command = "${pkgs.rust-analyzer}/bin/rust-analyzer";
            };
            gopls = {
              command = "${pkgs.gopls}/bin/gopls";
            };
            pyright = {
              command = "${pkgs.pyright}/bin/pyright-langserver";
            };
            typescript-language-server = {
              command = "${pkgs.typescript-language-server}/bin/typescript-language-server";
              args = ["--stdio"];
            };
            vscode-json-language-server = {
              command = "${pkgs.vscode-langservers-extracted}/bin/vscode-json-language-server";
              args = ["--stdio"];
            };
            vscode-html-language-server = {
              command = "${pkgs.vscode-langservers-extracted}/bin/vscode-html-language-server";
              args = ["--stdio"];
            };
            vscode-css-language-server = {
              command = "${pkgs.vscode-langservers-extracted}/bin/vscode-css-language-server";
              args = ["--stdio"];
            };
            taplo = {
              command = "${pkgs.taplo}/bin/taplo";
            };
            yaml-language-server = {
              command = "${pkgs.yaml-language-server}/bin/yaml-language-server";
              args = ["--stdio"];
            };
            omnisharp = {
              command = "${pkgs.omnisharp-roslyn}/bin/omnisharp";
            };
            dockerfile-language-server = {
              command = "${pkgs.dockerfile-language-server}/bin/dockerfile-language-server";
              args = ["--stdio"];
            };
            bash-language-server = {
              command = "${pkgs.bash-language-server}/bin/bash-language-server";
              args = ["start"];
            };
            marksman = {
              command = "${pkgs.marksman}/bin/marksman";
            };
          };
        };
      };
    };
  };
}
