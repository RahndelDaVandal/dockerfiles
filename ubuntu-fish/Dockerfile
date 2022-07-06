FROM ubuntu-barebones:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN sudo apt-get update && \
    sudo apt-get install --yes software-properties-common && \
    sudo add-apt-repository --yes ppa:fish-shell/release-3 && \
    sudo apt-get install --yes fish

SHELL ["fish", "--command"]

RUN sudo chsh -s /usr/bin/fish

ENV SHELL /usr/bin/fish
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8

COPY aliases.fish /home/ubuntu/.config/fish/functions/aliases.fish

ENTRYPOINT [ "fish" ]
