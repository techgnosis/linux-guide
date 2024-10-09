{
	description =  "My NixOS flake";

	inputs = {
	  nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
	};

	outputs = { self, nixpkgs} @inputs: {
	  nixosConfigurations.genome = nixpkgs.lib.nixosSystem {
	  	system = "x86_64-linux";
	  	modules = [
	  		./configuration.nix
	  	];
	  };
	};
}
