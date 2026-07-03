{ ... }:
let
  logo = import ./Nerv-logo;
in {
  programs.fastfetch = {
    enable = true;
    settings = logo;
  };
}
