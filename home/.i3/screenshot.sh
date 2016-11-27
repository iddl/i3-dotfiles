DESTINATION=~/Dropbox/Screenshots/linux/$(date +"%y%m%d-%H%M%S").png
shutter -s -e -o $DESTINATION && dropbox sharelink $DESTINATION | xclip -selection c
