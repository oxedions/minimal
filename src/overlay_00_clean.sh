#!/bin/sh

SRC_DIR=$(pwd)

echo "Cleaning up the overlay work area. This may take a while..."
rm -rf work/overlay
mkdir -p work/overlay

mkdir -p work/src/minimal_overlay

# -p stops errors if the directory already exists.
mkdir -p source/overlay

cd work/src/minimal_overlay

# Remove all previously prepared overlay artifacts.
for dir in $(ls -d */ 2>/dev/null) ; do
  rm -rf $dir
  echo "Overlay folder '$dir' has been removed."
done

echo "Ready to continue with the overlay software."

cd $SRC_DIR

