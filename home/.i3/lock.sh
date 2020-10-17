#!/bin/sh -e

BG=~/tmp/screen_locked.png

# Take a screenshot
rm $BG
scrot $BG

# Pixellate it 10x
mogrify -scale 10% -scale 1000% $BG

# Lock screen displaying this image.
i3lock -i $BG

# # Turn the screen off after a delay.
sleep 10; pgrep i3lock && xset dpms force off
