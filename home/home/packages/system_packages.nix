{pkgs, ...}: {
  home.packages = with pkgs;[
    #system tool
    pavucontrol #control audio device
    nautilus #file manager


    #Cli
    neofetch
    btop-cuda # resources monitor
    #rofi
    #yazi
    #ripgrep
    #fzf
    #lazygit

    #appluncher
    rofi-wayland



    #xclip #clipboard x11
    wl-clipboard #clipboard wayland
    tree
    git
    #htop
    #openssh
    #unpackage
    unzip
    #wget
    zip

    # sniipet
    grim
    slurp
    swappy
    libnotify #for system notify library function


    #font
    nerd-fonts.iosevka-term
  ];
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.waylandFrontend = true;
    fcitx5.addons = with pkgs; [
      fcitx5-chewing
      fcitx5-gtk
    ];
  };
}
