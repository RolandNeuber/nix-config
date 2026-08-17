{
  description = "Rust development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    fenix.url = "github:nix-community/fenix";
  };

  outputs = { self, nixpkgs, fenix }:
    {
      lib.mkDevShell = {
        system ? "x86_64-linux",
        toolchainHash ? "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=",
        toolchainFile,
        extraPackages ? [],
        extraShellAttrs ? {},
      }:

      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ fenix.overlays.default ];
        };
        toolchain = pkgs.fenix.fromToolchainFile {
          file = toolchainFile;
          sha256 = toolchainHash;
        };
      in
        pkgs.mkShell ({
          packages = with pkgs; [
            toolchain
          ] ++ extraPackages;
        } // extraShellAttrs);
    };
}

