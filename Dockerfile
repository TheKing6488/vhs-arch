FROM archlinux:latest

VOLUME /vhs
WORKDIR /vhs

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm ffmpeg chromium bash vhs neofetch ttf-fira-code && \
    pacman -Scc --noconfirm  

ENV VHS_NO_SANDBOX "true"

ENTRYPOINT ["/usr/bin/vhs"]

LABEL org.opencontainers.image.source=https://github.com/TheKing6488/vhs-arch