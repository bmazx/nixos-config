{ config, pkgs, ... }:

{
  imports = [
    ../modules/zsh.nix
    ../modules/git.nix
  ];

  home.username = "bma";
  home.homeDirectory = "/home/bma";
  home.stateVersion = "25.11";

  programs.bash = {
    enable = true;
  };
}
