#!/usr/bin/bash

sudo apt install -y \
ayatana-indicator-application \
fortune-mod \
libavif-gdk-pixbuf \
libgdk-pixbuf2.0-0 \
libgdk-pixbuf2.0-dev \
libglib2.0-0 \
libglib2.0-dev \
desktop-file-utils \
libpango1.0-0 \
pango1.0-tools \
libpango1.0-dev \
gir1.2-ayatanaappindicator3-0.1 \
gir1.2-gexiv2-0.10 \
gir1.2-notify-0.7 \
gir1.2-pango-1.0 \
gir1.2-gtk-3.0 \
gir1.2-glib-2.0 \
gir1.2-gdkpixbuf-2.0 \
imagemagick \
python3-bs4 \
python3-lxml \
python3-cairo \
python3-cairo-dev \
python3-configobj \
python3-dbus \
python3-gi \
python3-gi-cairo \
python3-httplib2 \
python3-pil \
python3-pkg-resources \
python3-requests \
variety

sleep 3


git clone https://github.com/arcolinux/arcolinux-variety.git

if [ ! -d "$HOME/.config/variety" ]; then
  echo "Creating ~/.fonts directory..."
  mkdir -p "$HOME/.config/variety"
else
  echo "directory already exists."
fi

echo "~/.fonts directory created."

mkdir -p ~/.config/variety
cp -r arcolinux-variety/etc/skel/.config/variety/* ~/.config/variety
