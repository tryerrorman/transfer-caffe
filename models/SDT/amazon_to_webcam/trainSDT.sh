#!/usr/bin/env sh

LOG=/home/fenglei/codes/transfer-caffe/models/SDT/amazon_to_webcam/results/train-`date +\%Y-\%m-\%d-\%H-\%M-\%S`.log 

TOOLS=./build/tools


$TOOLS/caffe train \
    --solver=/home/fenglei/codes/transfer-caffe/models/SDT/amazon_to_webcam/protos/solver.prototxt \
    --weights=/home/fenglei/codes/transfer-caffe/models/bvlc_reference_caffenet/bvlc_reference_caffenet.caffemodel \
    --gpu 0 \
    2>&1 | tee $LOG

