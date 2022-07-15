#!/bin/bash
# Our custom function
cust_func(){
    args="$1"
    args_array=($args)
    echo "first arg: ${args_array[0]}, second arg: ${args_array[1]}"
}

while IFS= read -r file
do
    cust_func "$file" &
    # do something to each file
done < list.txt


wait
echo "All files are downloaded."
