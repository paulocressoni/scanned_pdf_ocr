#!/bin/bash
# setup for Linux - Ubuntu 16.04 

# update packages
sudo apt update

# install tesseract ocr
sudo apt install -y tesseract-ocr

# install portuguese language
sudo apt-get install -y tesseract-ocr-por

# for any other language
# sudo apt-get install tesseract-ocr-[lang]

# list the supported languages
tesseract --list-langs

# install imageMagick (if you do not have installed already)
sudo apt install -y imagemagick


#on the file '/etc/ImageMagick-6/policy.xml', change the line:
#  <policy domain="coder" rights="none" pattern="PDF" />
#to
#  <policy domain="coder" rights="read|write" pattern="PDF" />
sudo sed -i 's/<policy domain="coder" rights="none" pattern="PDF" \/>/<policy domain="coder" rights="read|write" pattern="PDF" \/>/' /etc/ImageMagick-6/policy.xml
# the location of the file may differ


