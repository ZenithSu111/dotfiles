{
  config,
  pkgs,
  lib,
  nixgl,
  username,
  ...
}: {
  home.username = "zenith";
  home.homeDirectory = "/home/zenith";

  home.stateVersion = "24.11"; # Please read the comment before changing.
  programs.home-manager.enable = true;
}
