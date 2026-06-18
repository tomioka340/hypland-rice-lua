#!/bin/bash

mogrify -format jpg *.png
mogrify -format jpg *.jpeg
mkdir -p png jpg jpeg
mv *.png png/
mv *.jpg jpg/
mv *.jpeg jpeg/
rm README.md


