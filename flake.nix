{
  description = "Ramona's NixOS flake config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    inherit (self) outputs;
  in {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs;};
        # > Our main nixos configuration file <
        modules = [
          ./nixos/configuration.nix
          home-manager.nixosModules.home-manager

          {
            home-manager.useUserPackages = true;
            home-manager.users.asusx515ea.home.stateVersion = "26.05";
            home-manager.users.asusx515ea.imports = [
              ./home_manager/home.nix
            ];
          }
         ];
       };
      };
  };
}
