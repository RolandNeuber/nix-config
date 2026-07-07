{ ... }:
{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remo
te Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Sourc
e Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall
 for Steam Local Network Game Transfers
  };
}

