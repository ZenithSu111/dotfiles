{pkgs, ...}: {
  home.packages = with pkgs;[
    #system tool
    pavucontrol
    flameshot
    xfce.thunar
    #Cli
    rofi
    yazi
    ripgrep
    fzf
    lazygit

    #xclip #clipboard x11
    wl-clipboard #clipboard wayland
    tree
    git
    htop
    openssh
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
}
