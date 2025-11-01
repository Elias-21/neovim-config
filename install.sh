#!/bin/sh

mkdir -pv ~/.config/nvim/
rm -rf ~/.config/nvim/*
mv init.lua ~/.config/nvim/init.lua
mv lua ~/.config/nvim/lua
