
#!/bin/bash
# init

#Make sure themes apply to everything
flatpak --user override --filesystem=/home/$USER/.icons/:ro
flatpak --user override --filesystem=/usr/share/icons/:ro

#make directories if not exist
mkdir -p ~/.icons && mkdir -p ~/.themes
mkdir -p ~/Downloads/icons && mkdir -p ~/Downloads/themes

#get cursor theme
cd ~/Downloads
wget https://gitlab.com/cursors/simp1e/-/jobs/3719462594/artifacts/raw/built_themes/Simp1e-Adw-Dark.tgz
tar xvf Simp1e-Adw-Dark.tgz
mv Simp1e-Adw-Dark ~/.icons/

#get icons
cd ~/Downloads
wget https://github.com/SebastJava/mint-yz-icons/releases/download/v4.0/mint-yz-icons_4.0.zip
unzip mint-yz-icons_4.0.zip -d icons/
cd icons
mv icons/* ~/.themes/

#get gtk theme 
cd ~/Downloads
wget https://github.com/SebastJava/mint-yz-theme/releases/download/v4.1/mint-yz-theme_4.1.zip
unzip mint-yz-theme_4.1.zip -d themes/
cd themes
mv themes/* ~/.themes/
cd ~/Downloads

#Cleanup
rm -rf themes 
rm -rf icons
rm -rf Simp1e-Adw-Dark.tgz







                
