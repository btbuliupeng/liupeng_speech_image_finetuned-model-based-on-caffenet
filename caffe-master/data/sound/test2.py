#!/usr/bin/python
import sys
import numpy as np
import matplotlib.pyplot as plt


# Make sure that caffe is on the python path:
caffe_root = '/home/liupeng/Desktop/caffe-master'  # this file is expected to be in {caffe_root}/examples
import sys
sys.path.insert(0, caffe_root + '/python')

import caffe
net=caffe.Classifier('deploy.prototxt','finetune_caffenet_train_iter_2337.caffemodel')

IMAGE_FILE = 'test/15.jpg'
   


prediction = net.predict(IMAGE_FILE)

print 'prediction shape:',prediction.shape
pyplot.plot(prediction)
prediction shape: (3,)  
[<matplotlib.lines.Line2D at 0x8faf4d0>]
