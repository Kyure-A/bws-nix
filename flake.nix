{
  description = "Bitwarden Secrets Manager for Nix and Home-manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosModules.default = import ./modules/bws.nix;
    darwinModules.default = import ./modules/bws.nix;
    homeManagerModules.default = import ./modules/bws-home.nix;
  };
}
