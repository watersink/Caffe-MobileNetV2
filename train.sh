#../caffe-face-caffe-face/build/tools/caffe train -solver ./solver_mobilev2_0.5.prototxt   -gpu 0 -weights snapshot_0.5/MobileNetv2_iter_535000.caffemodel
#../caffe-face-caffe-face/build/tools/caffe train -solver ./solver_mobilev2_0.75.prototxt   -gpu 1 -weights snapshot_0.75/MobileNetv2_iter_360000.caffemodel 
../caffe-face-caffe-face/build/tools/caffe train -solver ./solver_mobilev2_1.0.prototxt   -gpu 2 -weights snapshot_1.0/MobileNetv2_iter_275000.caffemodel
#../caffe-face-caffe-face/build/tools/caffe train -solver ./solver_mobilev2_0.35.prototxt   -gpu 7 -weights snapshot_0.35/MobileNetv2_iter_615000.caffemodel

