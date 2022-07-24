# barebones build of debian:bullseye-slim

FROM debian:bullseye-slim

ENV USER=debian

RUN apt-get update
RUN apt-get install sudo

RUN adduser --disabled-password --gecos '' $USER
RUN adduser $USER sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER $USER
WORKDIR /home/$USER

RUN sudo apt-get install -y ninja-build gettext libtool \
libtool-bin autoconf automake cmake g++ pkg-config unzip \
curl doxygen git curl wget fzf vim exa

RUN ls
