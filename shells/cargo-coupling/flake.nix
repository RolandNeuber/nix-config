{
  description = "cargo-coupling";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    fenix.url = "github:nix-community/fenix";
  };

  outputs = { self, nixpkgs, fenix }:
    let
     systems = [
       "x86_64-linux"
       "aarch64-linux"
     ];
    in {
      packages = nixpkgs.lib.genAttrs systems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in {
          default = pkgs.rustPlatform.buildRustPackage {
            pname = "cargo-coupling";
            version = "v0.3.8";

            nativeBuildInputs = with pkgs; [
              git
            ];

            src = pkgs.fetchFromGitHub {
              owner = "nwiizo";
              repo = "cargo-coupling";
              rev = "844650967c08b6059a613fb6224886750c3ed9ce";
              hash = "sha256-W4S0Hw673guNaSCkJ7HjQz2lQS5N/L4cZVHjlOYJCpM=";
            };

            cargoHash = "sha256-lHwg3e+ZsO/hjxT1wc7uKKtmqzzjVLCr/Ig6Uew8MPc=";
          };
        }
      );
    };   
}

