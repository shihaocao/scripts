echo "doing dir $1"
for f in "$1"/*.jpg
do
  echo "Cropping: $f"
  mogrify -crop 1440x928 "$f"
done
