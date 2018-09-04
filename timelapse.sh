#!/bin/bash

while true; do
    # convert -delay 4 -loop 0 plants/*.jpg /tmp/plants_.gif
    python mkgif.py
    gifsicle --colors 128 -O3 /tmp/plants_.gif > /tmp/plants.gif
    scp /tmp/plants.gif ftseng@starbase.in:/srv/frnsys/plants.gif
    sleep 3600
done