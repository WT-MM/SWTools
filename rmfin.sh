#!/bin/bash
FINDIR="$PWD/fixed_textgrids_temp"
FIXDIR="$PWD/fixed_textgrids"
RAWDIR="$PWD/sw_textgrids_da"
NEWDIR="$PWD/sw_textgrids_da_new"
cp -a "$FIXDIR/." "$FINDIR/"
cp -a "$RAWDIR/." "$NEWDIR/"
for f in $FINDIR/*.TextGrid; do
STR=${f%.*}
NAME=$(basename $STR)
echo "Skipped $NAME"
rm "$NEWDIR/$NAME"
done
rm -r $FINDIR
