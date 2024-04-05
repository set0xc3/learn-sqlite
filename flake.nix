{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};

    venvDir = "./.venv";
    python = pkgs.python310;
    pythonPackages = pkgs.python310Packages;
  in {
    services.nginx = {
      statusPage = false;
    };

    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        sqlite
        python
        nodejs
      ];
    };
  };
}
