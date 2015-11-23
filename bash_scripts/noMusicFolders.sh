#! /bin/bash

# finds folders that have no mp3's and deletes them
# useful for cleaning up folders that have album art and other junk, but no music

find -depth -type d | while read -r D
 do
 v=$(find "$D" -iname '*.mp3')
 case "$v" in
 ""  )
    echo "$D no mp3"
    # rm -fr "$D" #uncomment to use
 ;;
 esac
done