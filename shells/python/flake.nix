{
  description = "Python development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    {
      lib.mkDevShell = {
        system ? "x86_64-linux",
        extraPackages ? [],
        extraShellAttrs ? {},
      }:

      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
        pkgs.mkShell ({
          packages = with pkgs; [
            ruff         
          ] ++ extraPackages;
        } // extraShellAttrs);
    };
}

