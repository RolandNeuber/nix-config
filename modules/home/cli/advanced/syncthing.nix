{ ... }:
{
  services.syncthing = {
    enable = true;
    settings = {
      devices = {
        "Ugreen NAS" = { 
          id = "W3QKBH3-NLSYW42-VVLUHU4-4QUMV6Z-WFI22BA-XOXJM73-VFBFFR5-6ZW43QL"; 
        };
      };
      folders = {
        "Bilder" = {
          id = "tu4no-rrce2";
          path = "/home/roland/Bilder";
          devices = [ "Ugreen NAS" ];
        };
        "Dokumente" = {
          id = "crtin-g7xmz";
          path = "/home/roland/Dokumente";
          devices = [ "Ugreen NAS" ];
        };
        "Musik" = {
          id = "aqhlj-f9qty";
          path = "/home/roland/Musik";
          devices = [ "Ugreen NAS" ];
        };
        "Videos" = {
          id = "e5fmz-hptdz";
          path = "/home/roland/Videos";
          devices = [ "Ugreen NAS" ];
        };
        "Projekte" = {
          id = "stcev-oumvn";
          path = "/home/roland/Projekte";
          devices = [ "Ugreen NAS" ];
        };
        "Share" = {
          id = "cudmj-w3puu";
          path = "/home/roland/Share";
          devices = [ "Ugreen NAS" ];
        };
      };
    };
  };
}
