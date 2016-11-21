#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

EXAMPLE=/home/liupeng/Desktop/caffe-master/data/sound
DATA=/home/liupeng/Desktop/caffe-master/data/sound
TOOLS=/home/liupeng/Desktop/caffe-master/build/tools

$TOOLS/compute_image_mean $EXAMPLE/imagenet_train_lmdb \
  $DATA/imagenet_mean.binaryproto

echo "Done."
