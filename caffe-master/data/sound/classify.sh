#!/usr/bin/env sh
DATA=/home/liupeng/Desktop/caffe-master/data/sound/test/

for name in /home/liupeng/Desktop/caffe-master/data/sound/test/*.jpg;do
    /home/liupeng/Desktop/caffe-master/build/examples/cpp_classification/classification.bin \
/home/liupeng/Desktop/caffe-master/data/sound/deploy.prototxt \
/home/liupeng/Desktop/caffe-master/data/sound/finetune_caffenet_train_iter_5000.caffemodel \
/home/liupeng/Desktop/caffe-master/data/sound/imagenet_mean.binaryproto \
/home/liupeng/Desktop/caffe-master/data/sound/synset_words.txt \
$name
done


