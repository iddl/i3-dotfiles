DESTINATION=~/Dropbox/Screenshots/linux/$(date +"%y%m%d-%H%M%S").png
killall -9 shutter
rm -f ~/.shutter/session.xml
# rm -rf is there to remove empty files if you press escape
flameshot gui --raw > $DESTINATION || rm -f $DESTINATION