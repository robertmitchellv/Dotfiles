#!/bin/bash

set -x verbose  # --> echo on

# make sure we're ~
cd ~/

# --> main file structure
mkdir code cloud media tmp

# --> code
cd ~/code/
mkdir bin projects

## --> bin
cd ~/code/bin/
mkdir javascript Python R Go

### --> javascript
cd ~/code/bin/javascript/
mkdir docs npm repos

### --> python
cd ~/code/bin/python/
mkdir libraries enviornments

### --> R
cd ~/code/bin/R/
mkdir docs packages repos

### --> Go
cd ~/code/bin/Go
mkdir docs repos

## --> projects
cd ~/code/projects/
mkdir personal professional work

### --> work
cd ~/code/projects/work/
mkdir srht

# --> cloud
# Insall Box, Dropbox, OneDrive, etc

# --> media
cd ~/media/
mkdir assets audio game image text video

### --> assets
cd ~/media/assets/
mkdir typefaces

### --> audio
cd ~/media/audio/
mkdir audiobook music podcast-interview

### --> image
cd ~/media/image/
mkdir personal art wallpaper

### --> text
cd ~/media/text/
mkdir books documents

#### --> books
cd ~/media/text/books
mkdir literature non-fiction technical

#### --> documents
cd ~/media/text/documents
mkdir created obtained

### --> video
cd ~/media/video
mkdir personal tv-movie

# --> get path ready for homebrew
cd ~/
echo "export LC_ALL=en_US.UTF-8" >> ~/.bash_profile
echo "export LANG=en_US.UTF-8" >> ~/.bash_profile
echo "export PATH=/usr/local/bin:$PATH" >> ~/.bash_profile && source ~/.bash_profile

# --> clone vundle for vim bundles
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
