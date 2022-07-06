FROM ubuntu-barebones

ARG DEBIAN_FRONTEND=noninteractive

RUN sudo apt-get update

RUN sudo apt-get install -y zsh stow

RUN sudo chsh -s /usr/bin/zsh

ENV SHELL /usr/bin/zsh
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8

CMD zsh
