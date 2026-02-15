{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings.user.name = "bmazx";
    settings.user.email = "brianma360@gmail.com";
    settings.safe.directory = "/etc/nixos";
  };
}
