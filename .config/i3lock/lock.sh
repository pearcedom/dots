#!/bin/bash
scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x5 /tmp/screenshotblur.png
i3lock -i /tmp/screenshotblur.png --insidecolor=373445ff --ringcolor=ffffffff \
    --line-uses-inside --keyhlcolor=d23c3dff --bshlcolor=d23c3dff \
    --separatorcolor=00000000 --insidevercolor=fecf4dff \
    --insidewrongcolor=d23c3dff --ringvercolor=ffffffff \
    --ringwrongcolor=ffffffff --indpos="x+80:y+700" \
    --radius=15 --veriftext="" --wrongtext=""
