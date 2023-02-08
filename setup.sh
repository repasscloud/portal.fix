#!/bin/bash

# rm -rf OptechX
# git clone https://github.com/ShaileshMepa/OptechX.git
# rm -rf OptechX/__MACOSX
# rm -rf OptechX/preview

DTAG="portal-fix"
DVER="2.2b"

docker build --rm --no-cache --tag "$DTAG:$DVER" .
