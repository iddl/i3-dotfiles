DESTINATION=~/Dropbox/Screenshots/linux/$(date +"%y%m%d-%H%M%S").png
# rm -rf is there to remove empty files if you press escape
flameshot gui --raw > $DESTINATION || rm -f $DESTINATION
