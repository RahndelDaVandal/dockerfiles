# Build file for master neovim image on debian-bullseye-slim-bb

FROM debian-bullseye-slim-bb

ENV USER=debian
USER $USER
WORKDIR /home/$USER

RUN git clone https://github.com/neovim/neovim
RUN cd neovim && \
  make CMAKE_BUILD_TYPE=RelWithDebInfo && \
  make install
