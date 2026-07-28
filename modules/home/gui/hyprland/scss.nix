{
  runCommandLocal,
  sassc,
}:

src:

let
  name = builtins.baseNameOf (toString src);
  target = builtins.replaceStrings [ ".scss" ".sass" ] [ ".css" ".css" ] name;
in
runCommandLocal target {
  nativeBuildInputs = [ sassc ];
} ''
  sassc ${src} $out
''
