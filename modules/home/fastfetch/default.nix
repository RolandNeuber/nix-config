{ ... }:
let
  logo = import ./Seele-logo;
in {
  programs.fastfetch = {
    enable = true;
    settings = logo;
  };
}
