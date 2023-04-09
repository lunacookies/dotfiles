{
  description = "luna’s dotfiles";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-22.11-darwin";
    darwin.url = "github:LnL7/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, darwin, nixpkgs }: {
    darwinConfigurations = {
      lunambp = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [ ./hosts/lunambp.nix ];
      };
    };
  };
}
