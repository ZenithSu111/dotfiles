#!/bin/bash

echo"update apt ..."

sudo apt update && sudo apt upgrade -y

echo"Dowloading neccesary tools"
sudo apt install -y git zsh curl wget build-essentail python3 python3-pip python3-venv


echo"set zsh as default"
chsh -s $(which zsh)


echo"downloading wezterm"
if ! command -v wezterm &> /dev/null; then
	$ curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
	$ echo 'deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
	sudo apt install wezterm
fi

if ! command -v starship &> /dev/null; then
	curl -sS https://starship.rs/install.sh | sh
fi


echo "all done"

