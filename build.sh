#!/bin/bash
CLEAN=${1:-'noclean'}

# Target image file
IMG_FILE=ed2.simg

# Max size in MB
IMG_MAXSIZE=1024

# Bootstrap definition file
BOOTSTRAP_FILE=ed2_docker

echo "Boostrapping image"
sudo singularity build --writable $IMG_FILE $BOOTSTRAP_FILE

# For more info on singularity commands, see http://singularity.lbl.gov/docs-usage
