
{
  config,
  lib,
  pkgs,
  nixgl,
  ...
}: {
  home.packages = with pkgs; [
    #coding tools
    neovim


    #Web
    postman
    #(config.lib.nixGL.wrap zed-editor)
    jetbrains.idea-community
    jetbrains.webstorm
    dbeaver-bin
  ];
}
