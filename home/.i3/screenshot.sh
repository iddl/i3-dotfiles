DESTINATION=~/Dropbox/Screenshots/linux/$(date +"%y%m%d-%H%M%S").png
killall -2 shutter
shutter -s -e -o $DESTINATION && dropbox sharelink $DESTINATION | xclip -selection c
