FROM ubuntu:20.04
MAINTAINER James Walmsley <james@vitalelement.co.uk>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install git vim debootstrap qemu-system-arm qemu-efi qemu-user qemu-user-static build-essential bc libncurses-dev multistrap dpkg-dev gcc-aarch64-linux-gnu g++-aarch64-linux-gnu cmake python3.7 python3-jinja2 python sudo
RUN apt-get -y install rsync cpio gzip u-boot-tools
RUN apt-get -y install android-sdk-ext4-utils android-sdk-libsparse-utils
RUN apt-get -y install bash-completion
RUN apt-get -y install device-tree-compiler libssl-dev bison flex swig
RUN apt-get -y install libpython3-dev strace
RUN apt-get -y install vim tmux
RUN apt-get -y install cryptsetup
RUN apt-get -y install squid-deb-proxy
RUN apt-get -y install pv
RUN apt-get -y install pigz
RUN apt-get -y install meson
RUN apt-get -y install texinfo
RUN apt-get -y install gawk
RUN apt-get -y install p7zip-full
RUN apt-get -y install dosfstools
RUN apt-get -y install kpartx
RUN apt-get -y install lbzip2
RUN apt-get -y install fastboot
RUN apt-get -y install libfdt-dev
RUN apt-get -y install pkg-config

WORKDIR /root/develop

