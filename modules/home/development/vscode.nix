{ pkgs, ... }:
let
  commonExtensions = with pkgs.vscode-extensions; [
    ms-ceintl.vscode-language-pack-de
    mechatroner.rainbow-csv
    gruntfuggly.todo-tree
    #vscodevim.vim
    jnoortheen.nix-ide
    arrterian.nix-env-selector
    #harryhopkinson.vim-theme
    #rogalmic.bash-debug
  ];
  commonSettings = {
    workbench.tree.indent = 24;
    window.autoDetectColorScheme = true;
  };

  mkProfile = {
    extensions ? [],
    settings ? {},
  }: {
    extensions = commonExtensions ++ extensions;
    userSettings = commonSettings // settings;
  };
in {
  programs.vscodium = {
    enable = true;
    profiles = with pkgs.vscode-extensions; {
      default = mkProfile { };
      rust = mkProfile {
        extensions = [
          rust-lang.rust-analyzer
          vadimcn.vscode-lldb
          tamasfe.even-better-toml
          fill-labs.dependi
          # TODO: Create PR to add
          #ranjitjhala.flux-checker
        ];
        settings = {
          rust-analyzer.check.command = "clippy";
          rust-analyzer.cargo.target = null;
          rust-analyzer.cargo.allTargets = false;
        };
      };
      haskell = mkProfile {
        extensions = [
          haskell.haskell
          justusadam.language-haskell
        ];
      };
      python = mkProfile {
        extensions = [
          ms-python.python
          ms-python.debugpy
          ms-python.vscode-python-envs

          ms-toolsai.jupyter
          ms-toolsai.vscode-jupyter-cell-tags
          ms-toolsai.jupyter-keymap
          ms-toolsai.jupyter-renderers
          ms-toolsai.vscode-jupyter-slideshow
        ];
      };
      typst = mkProfile {
        extensions = [
          tomoki1207.pdf
          myriad-dreamin.tinymist
          #surv.typst-math
        ];
      };
    };
  };
}
