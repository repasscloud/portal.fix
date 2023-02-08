#!/bin/bash

# rm -rf OptechX
# git clone https://github.com/ShaileshMepa/OptechX.git
rm -rf OptechX/__MACOSX
rm -rf OptechX/preview

docker build --rm --no-cache --tag "$DTAG:$DVER" .
