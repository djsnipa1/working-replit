{ pkgs ? import (fetchTarball {
  url = "https://github.com/NixOS/nixpkgs/archive/a5f661b80e4c163510a5013b585a040a5c7ef55e.tar.gz";
  sha256 = "0v0f5h31iqmcx61nylhn111j7r56m8lx04xllh0p4d13k2gl0hc5";
}) { } }:
pkgs.mkShell {
  buildInputs =
    [ pkgs.lf pkgs.neovim pkgs.nodejs pkgs.nodePackages.pnpm pkgs.nixfmt ];
}


