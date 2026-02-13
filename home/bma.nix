{ config, pkgs, ... }:

{
  home.username = "bma";
  home.homeDirectory = "/home/bma";
  home.stateVersion = "25.11";

  programs.bash = {
    enable = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };
  };

  programs.git = {
    enable = true;
    settings.user.name = "bmazx";
    settings.user.email = "brianma360@gmail.com";
    settings.safe.directory = "/etc/nixos";
  };
}
