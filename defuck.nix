let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  my-pinned-package = import sources.my-pinned-package {};

in
pkgs.mkShell {
  buildInputs = [
    pkgs.hello pkgs.python3 my-pinned-package
  ];
}
pkgs.mkShell {
  buildInputs =
    [ pkgs.lf pkgs.neovim pkgs.nodejs pkgs.nodePackages.pnpm pkgs.nixfmt ];
}


