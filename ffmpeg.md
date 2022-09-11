# seems to work for 4x speed up but fails for 10x or higher

ffmpeg -itsscale 0.00833 -i GH030581.MP4 -c copy 181c.MP4

# seems actually faster sometimes???
ffmpeg -i input.mkv -filter:v "setpts=PTS/60" output.mkv

# the actual way!! it drops frames!!
ffmpeg -i input -vf framestep=60,setpts=N/30/TB -r 30 -an out.mp4

concatenate mp4:
`
ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4
`