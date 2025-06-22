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
    vivaldi
    (config.lib.nixGL.wrap rustdesk-flutter)
    (config.lib.nixGL.wrap alacritty)
    (config.lib.nixGL.wrap wezterm)

    #virual
    #virt-manager

    #coding tools
    neovim
    postman
    #(config.lib.nixGL.wrap zed-editor)
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
    userName = "zenthus";
    userEmail = "4B1L0901@stust.edu.tw";
  };
  programs.zsh = {
      enable = true;

      autosuggestion = {
          enable = true;
      };
      oh-my-zsh = {
          enable = true;
      };
      syntaxHighlighting = {
          enable = true;
      };
  };
  programs.starship = {
      enable = true;
      enableZshIntegration = true;
  };
}
