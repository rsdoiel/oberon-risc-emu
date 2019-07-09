#!/bin/bash

DISC_IMAGE="Oberon-$USER.dsk"
if [[ ! -f "$DISC_IMAGE" && "$1" = "" ]]; then
    echo "Copying DiskImage/Oberon-2019-01-21.dsk ${DISC_IMAGE}"
    cp -vi DiskImage/Oberon-2019-01-21.dsk "${DISC_IMAGE}"
fi
if [[ ! -f risc ]]; then
    echo "Building the risc emulator"
    make
fi
if [[ -f "${DISC_IMAGE}" ]]; then
    echo "Running Oberon with $DISC_IMAGE"
    ./risc --mem 2048 --size 1025x512 "${DISC_IMAGE}"
else
    echo "Can't find $DISC_IMAGE";
    exit 1
fi
