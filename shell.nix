{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    cargo
    rustc
    rust-analyzer
  ];

  shellHook = ''
    export PATH=$PATH:$HOME/.cargo/bin
  '';
}