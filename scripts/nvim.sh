#!/bin/bash
mv ~/.config/nvim ~/.config/nvimbackup
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
