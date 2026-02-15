{ config, pkgs, ... }:

let
  username = "bma";
  githubUserName = "bmazx";
  githubEmail = "brianma360@gmail.com";
in
{
  imports = [
    ../modules/zsh.nix
    ../modules/git.nix
  ];

  programs.git = {
    settings.user.name = githubUserName;
    settings.user.email = githubEmail;
    settings.safe.directory = "/etc/nixos";
  };

  home.username = username;
  home.homeDirectory = "/home/${username}";
  home.stateVersion = "25.11";

  programs.bash = {
    enable = true;
  };
}
