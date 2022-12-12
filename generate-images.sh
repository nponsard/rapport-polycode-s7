#!/bin/sh

files=$(ls -d sketches/*/*.drawio)

for file in $files
do
  echo "Processing $file"
  drawio -x -f png $file
done