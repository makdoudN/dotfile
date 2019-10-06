sudo apt-get install -y meson libglib2.0-dev yelp-tools libgirepository1.0-dev libgtk-3-dev gir1.2-totemplparser-1.0 python-gi-dev 
sudo apt-get install -y libsoup-gnome2.4-dev
sudo pip3 install pygobject --upgrade
git clone https://gitlab.gnome.org/World/lollypop.git ~/lollypop
cd ~/lollypop
meson builddir --prefix=/usr
sudo ninja -C builddir install
rm -rf ~/lollypop
