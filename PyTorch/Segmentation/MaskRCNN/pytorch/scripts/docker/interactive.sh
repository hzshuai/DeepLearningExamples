#!/bin/bash

PATH_TO_COCO= $1 #Location of COCO-2014 in local machine or use your own dataset. 
MOUNT_LOCATION='/datasets/data'
NAME='maskrcnn_interactive'
docker run --runtime=nvidia -v $PATH_TO_COCO:/$MOUNT_LOCATION --rm --name=$NAME --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 --ipc=host -t -i nvidia_joc_maskrcnn_pt bash
