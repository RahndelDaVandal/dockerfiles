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
RUN sudo apt-get install -y curl git wget vim fzf exa 
RUN mkdir ~/.config

RUN echo alias "ls=\"exa -alFmh --group-directories-first\"" >> .bash_aliases
