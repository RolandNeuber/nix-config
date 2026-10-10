{ pkgs, ... }:
{
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
 
  services.printing = {
    enable = true;
    drivers = with pkgs; [
      /*cups-filters
      cups-browsed
      cups-bjnp*/
      cnijfilter2
    ];
  };

  # Required for Canon BJNP discovery and printing
  /*
  hardware.printers = {
    ensurePrinters = [
      {
        name = "Canon_G3010";
        location = "Local Network";
        deviceUri = "bjnp://192.168.0.96";
        model = "canong3000.ppd"; # cnijfilter2 uses g3000 series PPD for G3010
      }
    ];
  };

  # Open firewall ports for Canon BJNP network communication
  networking.firewall = {
    allowedUDPPorts = [ 8611 8612 5353 ]; # BJNP discovery & printing
    allowedTCPPorts = [ 631 ];      # CUPS
  };
  */
}
