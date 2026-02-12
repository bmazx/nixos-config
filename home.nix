{ config, pkgs, ... }:

{
  home.username = "bma";
  home.homeDirectory = "/home/bma";
  home.stateVersion = "25.11";

  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos btw";
    };
  };

  programs.git = {
    enable = true;
    settings.user.name = "bmazx";
    settings.user.email = "brianma360@gmail.com";
    settings.safe.directory = "/etc/nixos";
  };
}
