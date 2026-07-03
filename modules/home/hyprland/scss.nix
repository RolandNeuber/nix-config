{
  runCommandWith,
  sass,
}:

src:

let
  name = builtins.baseNameOf (toString src);
  target = builtins.replaceStrings [ ".scss" ".sass" ] [ ".css" ] name;
in
runCommandWith {
  name = "sass-to-css";
  derivationArgs.nativeBuildInputs = [ sass ];
} ''
  mkdir -p $out
  sass ${src} "$out/${target}"
''
