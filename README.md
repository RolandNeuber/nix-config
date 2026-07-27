# Installation

## On Non-NixOS

### Install Nix

- https://nixos.org/download/

- Choose Multi-user installation
- Execute command on the host machine
- Create `~/.config/nix/nix.conf` and add the following:
    - `experimental-features = nix-command flakes`
- Restart shell

### Clone repository

- Go into you home directory
- `git clone git@github.com:RolandNeuber/nix-config.git`
- Create a new configuration in `hosts`
    - Create a flake.nix
    - Create a home.nix
    - Create an aliases.nix
    - Or copy the files from an existing config and adjust them to your use case

### Install Home Manager

- https://nix-community.github.io/home-manager/nix-flakes/standalone.html
