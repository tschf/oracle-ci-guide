#!/bin/bash

# Check if the file exists already
if [[ -f $CACHE_DIR/$XE_ZIP ]]
then
    echo "File cached. Don't need to re-fetch"
    exit 0
fi

go get github.com/tschf/odl
odl -component db -version 11gXE -os linux -arch x64 -lang na -accept-license
file $XE_ZIP
mkdir -p $CACHE_DIR
mv $XE_ZIP $CACHE_DIR
ls $CACHE_DIR
