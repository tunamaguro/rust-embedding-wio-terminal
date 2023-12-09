FROM mcr.microsoft.com/vscode/devcontainers/rust:1-bullseye

# Install cross compile toolchain
RUN rustup target add thumbv7em-none-eabihf

ARG USER=vscode

# Install packages for Wio Terminal
# Ref 基礎から学ぶ組み込みRust p37
# https://www.c-r.com/book/detail/1403
RUN apt-get update -y && \
    apt-get install -y \
    gcc \
    git \
    minicom \
    libusb-1.0.0-dev \
    libsdl2-dev \
    libssl-dev \
    sudo

USER ${USER}

# Install cargo sub command
RUN cargo install \
    cargo-generate \
    hf2-cli \
    cargo-hf2

