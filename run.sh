cd /data/lapse/
parallel --progress gm mogrify -quality 100 -output-directory ../lapse-resize -resize 1920x1080! ::: *.JPG
cd /data/lapse-resize/
#TODO: doesnt work for longer filenames
for file in ??????*; do echo mv $file `echo $file | cut -c4-7`.JPG ; done
avconv -r 15  -i '%4d.JPG' -r 30 time-lapse.mp4

