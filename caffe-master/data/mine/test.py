#!/usr/bin/python
import sys
import numpy as np
import matplotlib.pyplot as plt


# Make sure that caffe is on the python path:
caffe_root = '/home/liupeng/Desktop/caffe-master'  # this file is expected to be in {caffe_root}/examples
import sys
sys.path.insert(0, caffe_root + '/python')

import caffe

# configure plotting
plt.rcParams['figure.figsize'] = (10, 10)
plt.rcParams['image.interpolation'] = 'nearest'
plt.rcParams['image.cmap'] = 'gray'

net=caffe.Classifier('deploy.prototxt','finetune_caffenet_train_iter_2337.caffemodel')
net.set_phase_test()
net.set_mode_cpu()
net.set_mean('data','imagenet_mean.binaryproto')
net.set_channel_swap('data',(2,1,0))
net.set_input_scale('data',255)

scores=net.predict([caffe.io.load_image(caffe_root+'/test/15.jpg')])
[(k,v.data.shape) for k,v in net.blobs.items()]
