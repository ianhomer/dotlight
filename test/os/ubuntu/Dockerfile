#
# Ubuntu image for dotfile validation
#
FROM ubuntu:25.10
RUN apt update
RUN apt install -y curl fd-find fish fzf git snapd stow sudo vim neovim zsh
RUN ln -s /usr/bin/fdfind /usr/bin/fd
RUN groupadd us && \
  useradd -m -g us me
RUN echo "me ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/me
RUN mkdir /home/me/.dotcore/
COPY . /home/me/.dotcore
RUN chown -R me:us /home/me

USER me
RUN rm ~/.bashrc
RUN /home/me/.dotcore/start

WORKDIR /home/me
