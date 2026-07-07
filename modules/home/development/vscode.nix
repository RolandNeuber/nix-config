{ pkgs, ... }:
{
  programs.vscode.enable = true;
  home.packages = with pkgs; [
    vscode
    vscode-extensions.rust-lang.rust-analyzer
  ];
}
