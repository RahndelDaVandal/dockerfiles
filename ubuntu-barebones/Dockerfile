FROM ubuntu:latest

env USER=ubuntu


RUN apt-get update
RUN apt-get install sudo

RUN adduser --disabled-password --gecos '' $USER
RUN adduser $USER sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER $USER
WORKDIR /home/$USER

RUN sudo apt-get install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
RUN sudo apt-get install -y curl git wget vim python3 python3-dev python3-venv fzf zoxide exa bat
RUN mkdir -p ~/.local/bin
RUN ln -s /usr/bin/batcat ~/.local/bin/bat
RUN mkdir ~/.config

COPY . .
