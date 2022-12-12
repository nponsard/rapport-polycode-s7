#!/bin/sh

# test if DRAWIO is set
if [ -z "$DRAWIO" ]; then
  DRAWIO=drawio
fi


files=$(ls -d sketches/*/*.drawio)

for file in $files
do
  echo "Processing $file"
  $DRAWIO -x -f png $file
done