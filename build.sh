#!/bin/bash
CLEAN=${1:-'noclean'}

# Target image file
IMG_FILE=ed2.img

# Max size in MB
IMG_MAXSIZE=2048

# Bootstrap definition file
BOOTSTRAP_FILE=ed2_docker

# Remove old image if present
if [ "$CLEAN" == "clean" ]; then
    echo 'Removing $IMG_FILE'
    rm -rf $IMG_FILE
fi

if [ ! -f $IMG_FILE ]; then
    echo "Creating new image file"
    # Note that sudo access is required on the host machine when building, but 
    # not when executing. The typical workflow is to build an image on a local 
    # machine where you have sudo access and then simply copy the image to your 
    # cluster of choice (as long as it has singularity installed).
    sudo singularity create --size $IMG_MAXSIZE $IMG_FILE
fi

echo "Boostrapping image"
sudo singularity bootstrap $IMG_FILE $BOOTSTRAP_FILE

# For more info on singularity commands, see http://singularity.lbl.gov/docs-usage
