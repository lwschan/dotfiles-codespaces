#!/usr/bin/env bash

sudo apt -y install cmake

# install zip and unzip packages
sudo apt -y install zip unzip

# install yq
sudo wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq &&\
    sudo chmod +x /usr/bin/yq
