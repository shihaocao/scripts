# scripts
A collection of handy commands and scripts that automate my tasks

## Useful Stackoverflows:
setup hiberate to swapfile

```
https://askubuntu.com/questions/6769/hibernate-and-resume-from-a-swap-file
```

## Resize and Crop
```
mogrify -resize 50% a.jpg
```

```
mogrify -crop 1440x928 a.jpg
```


## Convert format
I think this overwrites, so copy first
```
mogrify -format jpg *.png
```

https://superuser.com/questions/71028/batch-converting-png-to-jpg-in-linux


# Brightening and White balancing an image using image magick

```
magick D81_3779.JPG -white-balance -brightness-contrast 16x5 output2.jpg
```