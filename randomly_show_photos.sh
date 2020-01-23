#!/bin/sh

duration=$3
dir=$1
numPhotos=$2
minutes=$(expr $duration \* 60)

filenames=`ls "$dir" | sort -R | head -"$numPhotos"`

for filename in $filenames
do
        echo "$filename"
        open "$dir/$filename"
        sleep "$minutes"
done
