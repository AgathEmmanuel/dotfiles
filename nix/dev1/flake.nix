{
  description = "My development environments with Nix and Flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
      };
    in
    {
      devShells.default = pkgs.mkShell {
        buildInputs = [
          pkgs.git
          pkgs.nodejs
          pkgs.python
          pkgs.neovim
          # Add other tools you need
        ];
      };

      devShells.python = pkgs.mkShell {
        buildInputs = [
          pkgs.python
          pkgs.pip
          pkgs.virtualenv
        ];
      };

      devShells.node = pkgs.mkShell {
        buildInputs = [
          pkgs.nodejs
          pkgs.yarn
        ];
      };
    });
}

