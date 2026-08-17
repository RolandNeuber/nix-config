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
            #pkg-config
            #ffmpeg

            #clang
            #llvmPackages.libclang

            #cargo-modules
            #cargo-expand
            #cargo-coupling
          ] ++ extraPackages;
          #LIBCLANG_PATH = "${pkgs.llvmPackages.libclang.lib}/lib";
          #LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
          #  pkgs.ffmpeg
          #];
        } // extraShellAttrs);
    };
}

