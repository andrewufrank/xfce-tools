# buildx with 
# docker buildx build -t andrewufrank/xfce-tools:v1 --platform linux/arm/v7,linux/arm64,linux/amd64 --push .


# x11docker/xfce
# adding only what docker requires 
# prepares for running x11docker

# removed libreoffice avahi-daemon avahi-utils default-jre \
# pushed to /dockerfile-basics : 
# pushed to individual container borgbackup 
# pushed to individual with gui : synaptic apt-xapian-index \
# 		xournal \
# pushed to totaste: nautilus gedit gedit-plugins geany  \
# not on armel (armv6) firefox-esr


FROM andrewufrank/basics:latest

RUN apt-get update &&  \   
    env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      	xpra \
      	xserver-xephyr \
      	lightdm   \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/sh"]
