{ pkgs, ... }:
{
  programs.vscode.enable = true;
  environment.systemPackages = with pkgs; [
    vscode
    vscode-extensions.rust-lang.rust-analyzer
  ];
}
