#!/bin/bash

set -x verbose  # --> echo on

# get and set fonts 
# @robertmitchellv | robertmitchellv.com

# my script for getting and setting custom fonts on linux (deb) machine
#  can also run periodically to see if there are updates to typefaces

cd ~/.fonts

# deja vu sans mono powerline
wget https://github.com/powerline/fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20Bold%20Oblique%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20Bold%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20Oblique%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20for%20Powerline.ttf

# fira code
wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Bold.otf
wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Light.otf
wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Medium.otf
wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Regular.otf
wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Retina.otf

# fira mono powerline
wget https://github.com/powerline/fonts/raw/master/FiraMono/FuraMono-Bold%20Powerline.otf
wget https://github.com/powerline/fonts/raw/master/FiraMono/FuraMono-Medium%20Powerline.otf
wget https://github.com/powerline/fonts/raw/master/FiraMono/FuraMono-Regular%20Powerline.otf

# roboto mono powerline
wget https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20Bold%20Italic%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20Bold%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20Italic%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20Light%20Italic%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20Light%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20Medium%20Italic%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20Medium%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20Thin%20Italic%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20Thin%20for%20Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20for%20Powerline.ttf

# source code pro powerline
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Black%20for%20Powerline.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Bold%20for%20Powerline.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20ExtraLight%20for%20Powerline.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Light%20for%20Powerline.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Medium%20for%20Powerline.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Powerline%20BlackItalic.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Powerline%20BoldItalic.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Powerline%20ExtraLightItalic.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Powerline%20Italic.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Powerline%20LightItalic.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Powerline%20MediumItalic.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Powerline%20SemiboldItalic.otf
wget https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf

# cache
fc-cache -f

