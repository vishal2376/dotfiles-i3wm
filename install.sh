sudo apt-get update

#Programming related
sudo apt-get install g++ git python3 python3-pip -y 

#Basic required tools

echo "[+] Installing Required tools..."
sudo apt-get install i3-gaps i3-gaps-wm -y
sudo apt-get install polybar dunst nm-applet suckless-tools betterlockscreen -y

#Additional Packages for i3wm

echo "[+] Installing Customization tools..."
sudo apt-get install compton hsetroot xsettingsd xclip rofi dmenu lxappearance scrot -y

echo "[+] Installing Fonts..."
sudo apt-get install fonts-noto fonts-font-awesome fonts-jetbrains-mono

echo "[+] Installing Media & Docs tools..."
sudo apt-get install pulseaudio sxiv scrot mpv vlc ffmpeg zathura -y

echo "[+] Installing Text Editors"
sudo apt-get install vim nvim -y

#Copying Config Files
echo "[+] Copying all config files... "
cp -r . ${HOME}/
echo "[+] Copied successfully..."

#Execute Permissions
echo "[+] Giving +x permissions to .config/ ..."
chmod -R +x .


#Favourite tools from Github 
echo "[+] Installing Requirements for Github Repos..."
sudo apt-get install coreutils xdg-utils w3m-img xdotool fbset jq pup yt-dlp fzf notify-send curl sed -y

echo "[+] Installing Waldl from Github"
sudo curl -sL "https://raw.githubusercontent.com/pystardust/waldl/master/waldl" -o /usr/local/bin/waldl
sudo chmod +x /usr/local/bin/waldl

echo "[+]Installing ani-cli from Github"
sudo curl -sL "https://raw.githubusercontent.com/pystardust/ani-cli/master/ani-cli" -o /usr/local/bin/ani-cli
sudo chmod +x /usr/local/bin/ani-cli

echo "[+]Installing ytfzf from Github"
sudo curl -sL "https://raw.githubusercontent.com/pystardust/ytfzf/master/ytfzf" -o /usr/local/bin/ytfzf
sudo chmod +x /usr/local/bin/ytfzf

echo "[+]Installing Tuxi from Github"
sudo curl -sL "https://raw.githubusercontent.com/Bugswriter/tuxi/main/tuxi" -o /usr/local/bin/tuxi
sudo chmod +x /usr/local/bin/tuxi

echo "[+]Installing FFF from Github"
git clone https://github.com/dylanaraps/fff temp/fff/
cd temp/fff && sudo make install
echo "Backup .bashrc file"
cp ${HOME}/.bashrc ${HOME}/.bashrc.bak
echo "[+]Appending FFF config in .bashrc"
cat fff_cp.txt >> ${HOME}/.bashrc

echo "[+] Done "
echo "[+] Restart and choose i3 at user-login window..."








