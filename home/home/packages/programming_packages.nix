
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
    vscode


    #Web
    postman
    #(config.lib.nixGL.wrap zed-editor)
    jetbrains.idea-community-bin
    dbeaver-bin

    #languages
    go
  ];
}
