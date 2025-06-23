{pkgs, ...}: {
  home.packages = with pkgs;[
    #system tool
    pavucontrol #control audio device
    #flameshot
    #xfce.thunar
    #Cli
    #rofi
    #yazi
    #ripgrep
    #fzf
    #lazygit

    #appluncher
    fuzzel

    #xclip #clipboard x11
    wl-clipboard #clipboard wayland
    #tree
    git
    #htop
    #openssh
    #unpackage
    unzip
    #wget
    #zip

    # sniipet
    #flameshot


    #font
    nerd-fonts.iosevka-term
  ];
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-chewing
      fcitx5-gtk
    ];
  };
}
