FROM fedora

RUN \
    dnf -y update && \
    dnf -y install neovim python3-neovim
ENTRYPOINT nvim
