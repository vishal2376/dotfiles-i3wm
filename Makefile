install : setup

setup : all-packages copy-files

all-packages: basic
	sudo apt-get install betterlockscreen dunst compton hsetroot xclip rofi fonts-noto fonts-font-awesome xsettingsd lxappearance scrot thunar sxiv dmenu -y

basic:
	sudo apt-get install curl jq suckless-tools i3 i3-wm i3blocks -y

copy-files: all-packages
	cp -ri .config/ $HOME/