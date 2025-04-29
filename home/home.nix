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

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.

  nixGL.packages = import nixgl {inherit pkgs;};
  nixGL.defaultWrapper = "nvidia"; # AMD mesa
  nixGL.installScripts = ["nvidia"];
  home.packages = with pkgs; [
    #app
    discord
    anki
    spotify
    obsidian
    brave
    (config.lib.nixGL.wrap rustdesk-flutter)

    #system tool
    pavucontrol
    flameshot
    xfce.thunar

    (config.lib.nixGL.wrap alacritty)


    #coding tools
    postman
    (config.lib.nixGL.wrap zed-editor)
    jetbrains.idea-community-bin
    dbeaver-bin

    #Cli
    rofi
    yazi
    lazygit

    tree
    git
    htop
    openssh
    #xclip #clipboard x11
    wl-clipboard #clipboard wayland

    #unpackage
    unzip
    wget
    zip


    #font
    cascadia-code
  ];

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-chewing
      fcitx5-gtk
    ];
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
    INPUT_METHOD = "fcitx";
    SDL_IM_MODULE = "fcitx";
    EDITOR = "nvim";
    TERMINAL = "alacritty";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;



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
