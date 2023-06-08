#!/bin/sh
sudo apt update
sudo apt install g++ make libreadline-dev htop vim python-is-python3 minisat pip git -y
pip install scikit-learn numpy scipy networkx==2.0 tqdm gensim torch
ln -s MuxLink/pytorch_DGCNN pytorch_DGCNN
cd pytorch_DGCNN/lib
make -j4
cd ../..
