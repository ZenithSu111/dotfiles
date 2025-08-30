#!/bin/sh

# Remove old configs safely
rm -rf "$HOME/.config/niri"
rm -rf "$HOME/.config/systemd"
rm -rf "$HOME/.config/alacritty"
rm -rf "$HOME/.config/waybar"
rm -rf "$HOME/.config/xdg-desktop-portal"
rm -rf "$HOME/.config/nvim"
rm -rf "$HOME/.config/starship.toml"
rm -rf "$HOME/.bashrc"

# Recreate systemd user folder if it doesn't exist
mkdir -p "$HOME/.config/systemd/user"

# Symlink unit files first
cp "$HOME/dotfiles/niri-wm/systemd/user/swaybg.service" "$HOME/.config/systemd/user/swaybg.service"
cp "$HOME/dotfiles/niri-wm/systemd/user/swayidle.service" "$HOME/.config/systemd/user/swayidle.service"



# Symlink config directories
ln -s "$HOME/dotfiles/niri-wm/niri" "$HOME/.config/niri"
ln -s "$HOME/dotfiles/alacritty" "$HOME/.config/alacritty"
ln -s "$HOME/dotfiles/niri-wm/waybar" "$HOME/.config/waybar"
ln -s "$HOME/dotfiles/niri-wm/xdg-desktop-portal" "$HOME/.config/xdg-desktop-portal"
ln -s "$HOME/dotfiles/nvim" "$HOME/.config/nvim"
ln -s "$HOME/dotfiles/starship.toml" "$HOME/.config/"
ln -s "$HOME/dotfiles/.bashrc" "$HOME/"


# Reload systemd so it sees the new units
systemctl --user daemon-reload

# Add dependencies for Niri
systemctl --user add-wants niri.service mako.service
systemctl --user add-wants niri.service waybar.service
systemctl --user add-wants niri.service swaybg.service
systemctl --user add-wants niri.service swayidle.service



