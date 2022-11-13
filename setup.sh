#!/bin/sh
ln -s MuxLink/pytorch_DGCNN pytorch_DGCNN
cd pytorch_DGCNN/lib
make -j4
cd ../..
pip install numpy scipy networkx tqdm sklearn gensim