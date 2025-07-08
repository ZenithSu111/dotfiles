{
  config,
  pkgs,
  lib,
  nixgl,
  username,
  ...
}: {
  home.username = "zenthus";
  home.homeDirectory = "/home/zenthus";

  home.stateVersion = "24.11"; # Please read the comment before changing.
  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
