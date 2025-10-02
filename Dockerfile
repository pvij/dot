FROM alpine:3.14

RUN apk add --no-cache \
    bash \
    git \
    python3 \
    neovim

RUN mkdir -p ~/.config
