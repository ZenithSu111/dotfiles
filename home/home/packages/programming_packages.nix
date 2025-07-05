
{
  config,
  lib,
  pkgs,
  nixgl,
  ...
}: {
  home.packages = with pkgs; [
    #coding editors
    neovim
    vscode

    #Web
    postman
    #(config.lib.nixGL.wrap zed-editor)
    jetbrains.idea-community-bin
    dbeaver-bin

  ];
}
