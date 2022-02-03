#!/bin/bash

npm test || exit 1

jake build[,,true]

git add \
    dist/leaflet.draw.js \
    dist/leaflet.draw-src.js \
    dist/leaflet.draw-src.map \
    dist/leaflet.draw.css \
    dist/leaflet.draw-src.css \
    docs/* \
    -f

git commit -m "bump"
