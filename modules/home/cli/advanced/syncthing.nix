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
        "Fairphone 6 Kamera" = {
          id = "cds5y-7sqdp";
          path = "/home/roland/Bilder/fairphone-6-kamera";
          devices = [ "Ugreen NAS" ];
        };
        "Galaxy S8 Kamera" = {
          id = "rwflr-nvuid";
          path = "/home/roland/Bilder/galaxy-s8-kamera";
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
  home.file."Bilder/.stignore".text = ''
    galaxy-s8-kamera
    fairphone-6-kamera
  '';
  home.file."Projekte/.stignore".text = ''
    // general
    (?d)**/target/
    (?d)**/node_modules/
    (?d)**/build/
    (?d)**/.vs/
    (?d)**/bin/
    (?d)**/lib/
    (?d)**/bin-docker/
    (?d)**/dist/
    (?d)**/cmake-build-*/
    (?d)**/CMakeFiles/
    (?d)**/.pytest_cache/
    (?d)**/.ruff_cache/
    (?d)**/*.exe
    (?d)**/*.o
    (?d)**/*.obj
    (?d)**/*.dll
    (?d)**/*.bin
    (?d)**/*.log

    // Unity Projects
    (?d)Unity Projects/**/obj/
    (?d)Unity Projects/**/built/
    (?d)Unity Projects/**/Library/
    (?d)Unity Projects/**/Temp/
    (?d)Unity Projects/**/Logs/
    (?d)Unity Projects/**/Obj/

    // C#
    (?d)CSharp/**/obj/

    // Uni
    // (?d)Uni/

    // Rust
    // covered by general

    // Python
    (?d)**/venv/
    (?d)**/.venv/
    (?d)Python/**/env*/
    (?d)**/.mypy_cache/
    (?d)**/__pycache__/
    (?d)Python/Bruteforce*/pypy*/
    (?d)Python/Bruteforce*/Python*/
    (?d)Python/**/bin/
    (?d)Python/**/lib/
    (?d)Python/**/lib64/

    // Java
    (?d)Java/**/out/
    (?d)Java/**/manual-target/

    // External
    (?d)External/

    // C
    (?d)C/**/*target/
    (?d)C/**/Ndless/ndless-sdk/

    // C++
    (?d)C++/**/x86/
    (?d)C++/**/x64/
    (?d)C++/**/Debug/
    (?d)C++/**/Release/
  '';
}
