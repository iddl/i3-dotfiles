DESTINATION=~/Dropbox/Screenshots/linux/$(date +"%y%m%d-%H%M%S").png
killall -9 shutter
rm -f ~/.shutter/session.xml
shutter --min_at_startup -s -e -o $DESTINATION && dropbox sharelink $DESTINATION | xclip -selection c
