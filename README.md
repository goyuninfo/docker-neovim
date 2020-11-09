# docker-neovim
neovim configuration as a Docker image

Docker base image for [neovim](https://github.com/neovim/neovim)

You can use it with your own configuration file like this:

    FROM fedora

    RUN \
      dnf -y update && \
      dnf -y install neovim python3-neovim
    ENTRYPOINT nvim
      ADD ~/.config/nvim ~/.config/nvim

Then build and run it:

    docker build -t nvim .
    docker run -ti --rm --name nvim nvim

You can mount directory like this:

    docker run -ti --rm --name nvim -v ~/goyun-info-project:/project nvim

You can add more plugins in your own Dockerfile.
