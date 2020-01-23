#!/bin/sh

duration=$1
dir=$2
numPhotos=$3
minutes=$(expr $duration \* 60)

filenames=`ls "$dir" | sort -R | head -"$numPhotos"`

for filename in $filenames
do
        echo "$filename"
        open "$dir/$filename"
        sleep "$minutes"
done
