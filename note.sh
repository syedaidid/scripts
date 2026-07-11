#!/bin/bash
NOTE=/home/syed/dox/notes
foldernote=$(cd $NOTE && ls -d */ | dmenu -l 20)
location=$NOTE/$foldernote
# echo location is $location
# filename=$(ls dox/vimwiki/ | dmenu -l 20 | cut -f 1 -d '.')
# echo $foldernote
filetoconvert=$(ls $NOTE/$foldernote*.md | dmenu -l 10)
#echo $filetoconvert
pdfname=$(echo $filetoconvert | cut -f 1 -d '.')
#echo $pdfname
pandoc-bin $filetoconvert --pdf-engine=xelatex -o $pdfname.pdf
# zathura $pdfname.pdf &
