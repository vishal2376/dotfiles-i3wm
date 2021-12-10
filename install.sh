sudo apt-get update

#Basic required tools

echo "[+] Installing Required tools..."
sudo apt-get install i3 -y
sudo apt-get install i3-wm polybar dunst nm-applet suckless-tools betterlockscreen -y

#Additional Packages for i3wm

echo "[+] Installing Customization tools..."
sudo apt-get install compton hsetroot xsettingsd xclip rofi dmenu lxappearance scrot -y

echo "[+] Installing Fonts..."
sudo apt-get install fonts-noto fonts-font-awesome fonts-jetbrains-mono

echo "[+] Installing Media & Docs tools..."
sudo apt-get install pulseaudio sxiv scrot mpv vlc ncmpcpp ffmpeg zathura -y

echo "[+] Installing Text Editors"
sudo apt-get install vim nvim gvim -y

#Copying Config Files
echo "[+] Copying all config files... "
cp -r . ~/
echo "[+] Copied successfully..."

#Favourite tools from Github 
echo "[+] Installing Requirements..."
sudo apt-get install jq pup yt-dlp fzf notify-send curl sed -y

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

echo "[+] Done "
echo "[+] Restart and choose i3 at user-login window..."








