#!/bin/bash
for filename in *.pdbqt; do
    awk -v fname="$filename" '/^MODEL/ {print $0, fname} !/^MODEL/ {print $0}' "$filename" > temp.txt && mv temp.txt "$filename"
done

