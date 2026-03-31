{
	description = "Main global flakes file";

	inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

	outputs = { self, nixpkgs }:
		let
			system = "x86_64-linux";
			pkgs = import nixpkgs { inherit system; };
		in {
			packages.${system} = {
				all = pkgs.buildEnv {
					name = "all-global-pkgs";
					paths = [
						pkgs.fastfetch
						pkgs.neovim
						pkgs.firefox
						pkgs.tmux
						pkgs.lazygit
						pkgs.btop
						pkgs.pandoc
					];
				};

				fastfetch = pkgs.fastfetch;
				neovim	  = pkgs.neovim;
				firefox	  = pkgs.firefox;
				tmux	  = pkgs.tmux;
				lazygit	  = pkgs.lazygit;
				btop	  = pkgs.btop;
				pandoc	  = pkgs.pandoc;

				default = self.packages.${system}.all;
			};
			apps.${system}.fastfetch = {
				type = "app";
				program = "${pkgs.fastfetch}/bin/fastfetch";
			};
		};
}
