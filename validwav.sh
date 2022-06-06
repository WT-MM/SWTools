#!/bin/bash
SRCDIR="$PWD/sw_textgrids_da_new"
WAVDIR="$PWD/wav"


for f in $SRCDIR/*; do
STR=$f.wav
NAME=$(basename $STR)
WAV=$WAVDIR/$NAME
if ! [ -f $WAV ]; then
    echo "$WAV doesn't exist"
    rm $f
fi
done