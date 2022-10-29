# Based on nixpkgs: ./pkgs/applications/window-managers/dwm/default.nix

with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "dwm-mydwm";
  src = lib.cleanSource ./.;

  buildInputs = with xorg; [ libX11 libXinerama libXft ];

  prePatch = ''sed -i "s@/usr/local@$out@" config.mk'';

  buildPhase = " make ";
}
