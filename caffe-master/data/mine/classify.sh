#!/usr/bin/env sh
DATA=/home/liupeng/Desktop/caffe-master/data/mine/test/

for name in /home/liupeng/Desktop/caffe-master/data/mine/fuza_test/*.jpg;do
    /home/liupeng/Desktop/caffe-master/build/examples/cpp_classification/classification.bin \
/home/liupeng/Desktop/caffe-master/data/mine/deploy.prototxt \
/home/liupeng/Desktop/caffe-master/data/mine/finetune_caffenet_train_iter_2337.caffemodel \
/home/liupeng/Desktop/caffe-master/data/mine/imagenet_mean.binaryproto \
/home/liupeng/Desktop/caffe-master/data/mine/synset_words.txt \
$name
done


