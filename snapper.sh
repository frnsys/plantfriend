#!/bin/bash

while true; do
    fswebcam -d /dev/video1 -r 1920x1080 -F 1 -S 32 --no-banner --set brightness=30% --jpeg 100 --rotate 90 --crop 1080x1520,0x400 /tmp/output.jpeg
    dt=$(date +"%Y-%m-%d_%H-%M-%S")
    cp /tmp/output.jpeg "plants/${dt}.jpg"
    scp /tmp/output.jpeg ftseng@starbase.in:/srv/frnsys/plants.jpg
    sleep 600
done