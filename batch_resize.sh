echo "doing dir $1"
for f in "$1"/*.jpg
do
  echo "Resizing: $f"
  mogrify -resize 50% "$f"
done
