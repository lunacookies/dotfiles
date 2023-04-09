{ config, pkgs, ... }:

{
  environment.systemPackages =
    [
      pkgs.clang
      pkgs.clang-tools
      pkgs.du-dust
      pkgs.fd
      pkgs.ffmpeg
      pkgs.fzf
      pkgs.git
      pkgs.graphviz
      pkgs.hugo
      pkgs.hyperfine
      pkgs.neovim
      pkgs.nixpkgs-fmt
      pkgs.nodejs
      pkgs.pastel
      pkgs.ripgrep
      pkgs.shellcheck
      pkgs.texlive.combined.scheme-full
      pkgs.tmux
      pkgs.tokei
      pkgs.tree
      pkgs.yt-dlp
    ];

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  nix.extraOptions = "experimental-features = nix-command flakes";

  programs.zsh.enable = true;
  programs.zsh.promptInit = "";

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
