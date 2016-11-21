#!/usr/bin/env sh
set -e

/home/liupeng/Desktop/caffe-master/build/tools/caffe train \
    --solver=solver.prototxt \
    --weights=bvlc_reference_caffenet.caffemodel $@
