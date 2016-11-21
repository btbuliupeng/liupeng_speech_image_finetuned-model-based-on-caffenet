#!/usr/bin/env sh

for name in /home/liupeng/Desktop/caffe-master/data/mine/test/*.jpg;do
    convert -resize 256x256\! $name $name
done

