#!/bin/bash
# Our custom function
cust_func(){
  echo "first arg $1"
}

while IFS= read -r file
do
    cust_func "$file" &
    # do something to each file
done < list.txt


wait
echo "All files are downloaded."
