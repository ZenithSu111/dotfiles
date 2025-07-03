{
  description = "Home Manager configuration of zenith";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    #nixgl.url = "github:nix-community/nixGL";
  };

  outputs = {
    nixpkgs,
    home-manager,
    #nixgl,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    username = "zenthus";
  in {
    homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;

      modules = [
        ./home
      ];
      extraSpecialArgs = {
        #nixgl = nixgl;
        inherit
          pkgs
          username
          ;
      };
    };
  };
}
