{
  config,
  lib,
  pkgs,
  nixgl,
  ...
}: {
  nixGL.packages = import nixgl {inherit pkgs;};
  nixGL.defaultWrapper = "nvidia"; # AMD mesa
  nixGL.installScripts = ["nvidia"];
  home.packages = with pkgs; [
    #app
    discord
    (config.lib.nixGL.wrap anki)
    spotify
    obsidian
    brave
    (config.lib.nixGL.wrap rustdesk-flutter)
    (config.lib.nixGL.wrap alacritty)

    #virual
    virt-manager

    #coding tools
    postman
    (config.lib.nixGL.wrap zed-editor)
    jetbrains.idea-community-bin
    dbeaver-bin
  ];
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };
  programs.git = {
    enable = true;
    userName = "zenith";
    userEmail = "4b1l0901@stust.edu.tw";
  };
}
