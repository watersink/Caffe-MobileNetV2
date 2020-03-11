 #!/usr/bin/en sh  
DATA=lmdb  
#rm -rf $DATA/img_train_lmdb  
#../caffe-face-caffe-face/build/tools/convert_imageset --shuffle --resize_height=256 --resize_width=256 /export/pigfarm/wangbo/offical_dataset/classification/ImageNet/ILSVRC2012_img_train/ train_label.txt  $DATA/img_train_lmdb 
rm -rf $DATA/img_val_lmdb  
../caffe-face-caffe-face/build/tools/convert_imageset --shuffle --resize_height=256 --resize_width=256 /export/pigfarm/wangbo/offical_dataset/classification/ImageNet/ILSVRC2012_img_val/ validation_label.txt  $DATA/img_val_lmdb 
