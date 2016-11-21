#!/usr/bin/env sh
DATA=/home/liupeng/Desktop/caffe-master/data/mine/train/
#find /home/liupeng/Desktop/caffe-master/data/mine/train/ -name '*.jpg' convert -resize 256x256 {} {};
for name in /home/liupeng/Desktop/caffe-master/data/mine/val/*.jpg;do
    convert -resize 256x256\! $name $name
done


cd /home/liupeng/Desktop/caffe-master/data/mine/train
for eachpath in `ls -d */`;do
cd $DATA/$eachpath
for name in `ls -R`;do
    echo $DATA/$eachpath
    convert -resize 256x256\! $name $name
done
done

