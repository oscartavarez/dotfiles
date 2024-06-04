#!/usr/bin/env bash

./ubuntu/install.sh

cp -R ubuntu/.config/* $HOME/.config/

echo "Config applied!"
