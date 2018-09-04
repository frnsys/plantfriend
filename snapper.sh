#!/bin/bash

while true; do
    streamer -s 1024x768 -f jpeg -o /tmp/output.jpeg
    dt=$(date +"%Y-%m-%d_%H-%M-%S")
    cp /tmp/output.jpeg "plants/${dt}.jpg"
    scp /tmp/output.jpeg ftseng@starbase.in:/srv/frnsys/plants.jpg
    sleep 600
done