
# MobileV2


### Introduction

This is a Caffe implementation of Google's MobileNets (v1 and v2). For details, please read the following papers:
- [v1] [MobileNets: Efficient Convolutional Neural Networks for Mobile Vision Applications](https://arxiv.org/abs/1704.04861)
- [v2] [Inverted Residuals and Linear Bottlenecks: Mobile Networks for Classification, Detection and Segmentation](https://arxiv.org/abs/1801.04381)


## Imagenet classificition results:
We provide pretrained MobileNet models on ImageNet, which achieve slightly better accuracy rates than the original ones reported in the paper. 

The top-1/5 accuracy rates by using single center crop (crop size: 224x224, image size: 256xN):


|Classification   model  | Top 1 Accuracy | Top 5 Accuracy |
|------------------------|----------------|----------------|
|[mobilenet_v1_1.0_224]  |    70.81       |     89.85      |
|[mobilenet_v2_0.35_224] |    50.8538     |     75.0625    |
|[mobilenet_v2_0.5_224]  |    54.9062     |     78.375     |
|[mobilenet_v2_0.75_224] |    55.5313     |     80.2188    |
|[mobilenet_v2_1.0_224]  |    56.2813     |     80.0625    |

## train
    create_lmdb.sh
	train.sh

## test

Evaluate MobileNet v1:
    python3 MobileNetv2.py --proto mobilenet_v1_1.0_224/mobilenet_deploy.prototxt --model mobilenet_v1_1.0_224/mobilenet.caffemodel --image cat.jpg 

Expected Outputs:

```
0.42 - 'n02123159 tiger cat'
0.08 - 'n02119022 red fox, Vulpes vulpes'
0.07 - 'n02119789 kit fox, Vulpes macrotis'
0.06 - 'n02113023 Pembroke, Pembroke Welsh corgi'
0.06 - 'n02123045 tabby, tabby cat'
```

Evaluate MobileNet v2:
    python3 MobileNetv2.py --proto mobilenet_v2_0.35_224/test_mobilev2_0.35.prototxt --model mobilenet_v2_0.35_224/MobileNetv2_iter_330000.caffemodel --image cat.jpg


Expected Outputs:

```
0.26 - 'n02123159 tiger cat'
0.22 - 'n02124075 Egyptian cat'
0.15 - 'n02123045 tabby, tabby cat'
0.04 - 'n02119022 red fox, Vulpes vulpes'
0.02 - 'n02326432 hare'
```


