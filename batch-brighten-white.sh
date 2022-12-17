#!bin/bash

# You have to create an edited folder in the directory to dump the images.
# This batch edits all images ending in .JPG in the current directory.

for j in *.JPG
do
  magick "$j" -white-balance -brightness-contrast 16x10 "edited/$j"
done
