FROM mcr.microsoft.com/vscode/devcontainers/rust:1-bullseye

# Install cross compile toolchain
RUN rustup target add thumbv7em-none-eabihf

# Install packages for Wio Terminal
# Ref 基礎から学ぶ組み込みRust p37
# https://www.c-r.com/book/detail/1403
RUN apt-get update -y && \
    apt-get install -y \
    git \
    minicom \
    libusb-1.0.0-dev \
    libsdl2-dev \
    libssl-dev \
    sudo

# Install cargo sub command
RUN cargo install \
    cargo-generate \
    hf2-cli \
    cargo-hf2

# To running cargo-hf2 without sudo, add udev rule
# COPY ./99-seed-boards.rules /etc/udev/rules.d/99-seed-boards.rules

# RUN udevadm control --reload-rules
ARG USER=vscode
RUN adduser ${USER} dialout

USER ${USER}