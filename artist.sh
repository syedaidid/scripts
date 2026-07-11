#!/bin/bash
for i in *.mp3; do mp3info $i | awk '/^Artist/' | awk  -F, '{print $1}' | awk '{print $2,$3}'; done > artist.txt
while IFS= read -r line; do  mkdir "$line" ;done < artist.txt
for i in *.mp3; do mv $i "'$(mp3info $i | awk '/^Artist/' | awk  -F, '{print $1}' | awk '{print $2,$3}')'"; done
