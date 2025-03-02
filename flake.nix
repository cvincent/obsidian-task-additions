{
  description = "Flake for Gleam/TypeScript project";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
  };

  outputs =
    { nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        system = system;
        config.allowUnfree = true;
      };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          gleam
          erlang
          nodejs
          typescript
        ];

        shellHook = ''
          echo "$(gleam --version | tr -s '\n')"
          echo "Node $(node --version)"
          echo ""
          echo "LFG."
        '';
      };
    };
}
