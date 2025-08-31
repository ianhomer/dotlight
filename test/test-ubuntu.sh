#!/bin/sh

#
# Sanity test for ubuntu
#
set -e

if [[ ! -d ~/.colima ]]; then
  echo "Colima not installed"
  exit 1
fi

if [[ ! -S ~/.colima/docker.sock ]]; then
  echo "Starting Colima"
  colima start
fi

_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
DOTCORE_DIR="${_DIR}/.."
cd ${DOTCORE_DIR}
docker build -t local/ubuntu-dotfiles -f test/os/ubuntu/Dockerfile .
docker run --rm -it local/ubuntu-dotfiles bash -l
