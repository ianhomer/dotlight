#
# Ubuntu image for dotfile validation
#
FROM ubuntu:24.04
RUN apt update
RUN apt install -y sudo
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
