{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.entr
    pkgs.pandoc
    pkgs.texlive.combined.scheme-small
  ];
}
