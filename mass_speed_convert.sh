#!/bin/bash
# Our custom function
cust_func(){
    args="$1"
    args_array=($args)
    echo "Converting: ${args_array[0]} to: ${args_array[1]} at higher speed"
    ffmpeg -i "${args_array[0]}.MP4" -filter:v "setpts=PTS/120" "{args_array[1]}.MP4"
}

while IFS= read -r file
do
    # ffmpeg is already multithreaded or something lol, don't try parallel
    cust_func "$file" &&
    # do something to each file
done < list.txt


wait
echo "All files are converted."
