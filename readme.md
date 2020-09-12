# x11docker/xfce

XFCE desktop in Docker image to run with [x11docker](https://github.com/mviereck/x11docker) to run GUI; uses Dockerfile from [mviereck](https://github.com/mviereck/dockerfile-x11docker-xfce) used to produce the multi-arch versions on [dockerhub](https://hub.docker.com/repository/docker/andrewufrank/xfce).
 
These are the additions always necessary. 

My additiona packages:

## Basics
sudo su; \
apt-get install sudo lvm2  curl \
apt-transport-https members \
rsync  filezilla net-tools \
avahi-daemon avahi-utils smartmontools \
ca-certificates fail2ban unattended-upgrades \
git usbutils  zip unzip \
 smartmontools

could add  postfix but requires configuratin (unclear)

move to x11 systems (eg. xfce)
nautilus baobab  system-config-lvm

for fujitsu-wickford firmware-realtek
when TSC_.. error at systemstart load apt get install intel-microcode-firmware

## tools
udo apt-get install lightdm synaptic apt-xapian-index \
gparted gedit gedit-plugins  baobab \
avahi-daemon avahi-utils avahi-discover \
meld file-roller git-gui cups \
nautilus baobab   raptor2-utils \
xournal gdebi sound-juicer ario dos2unix \
geany gnome-disk-utility borgbackup system-config-printer \
libicu-dev icu-devtools \
syncthing


zlib-dev libghc-text-iuc-dev

die letzte zeile ist fuer ghc das ueber stack installiert wird.

in buster missing   
openjdk-8-jre 
system-config-lvm (but installed on santa fe)

## interactive for xfce4
sudo apt-get install \
synaptic apt-xapian-index \
xrdp network-manager-gnome \
gparted  gnome-disk-utility gedit gedit-plugins    baobab \
avahi-daemon avahi-utils avahi-discover avahi-ui-utils \
meld file-roller git-gui cups \

should include one of  the packages serving as vnc-viewer xorgxrdp

allready included: firefox-esr nemo


nur xfce4: 

sudo apt-get install \
xfce4 xfce4-terminal xfce4-goodies xfce4-whiskermenu-plugin tango-icon-theme gnome-icon-theme  lightdm \
xorg  


```

# Command examples: 
 - Full desktop: `x11docker --desktop x11docker/xfce --home=/home/frank`

# Options:
 - Persistent home folder stored on host with   `--home`
 - Shared host file or folder with              `--share PATH`
 - Hardware acceleration with option            `--gpu`
 - Clipboard sharing with option                `--clipboard`
 - ALSA sound support with option               `--alsa`
 - Pulseaudio sound support with option         `--pulseaudio`
 - Language locale settings with                `--lang [=$LANG]`
 - Printing over CUPS with                      `--printer`
 - Webcam support with                          `--webcam`

Look at `x11docker --help` for further options.

# Extend base image
To add your desired applications, create your own Dockerfile with this image as a base. Example:

 # Screenshot
 XFCE desktop in an Xnest window running with x11docker:
 
 ![screenshot](https://raw.githubusercontent.com/mviereck/x11docker/screenshots/screenshot-xfce.png "XFCE desktop running in Xephyr window using x11docker")
 

