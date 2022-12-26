#!/usr/bin/env bash

git submodule update --init --recursive

git config core.filemode false

# Enable commit signing for all repos
git config --global commit.gpgsign true
