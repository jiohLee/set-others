# 0. Overview
This repository is for backup and maintainance for environment settings

# 1. ubuntu-preset.sh
1. force color setting for bash shell
2. update mirror repository [kr.archive.ubuntu.com](http://kr.archive.ubuntu.com/) → [mirror.kakao.com](http://mirror.kakao.com/)
3. install packages
4. git configuration
5. vim configuration
### apt packages
- openssh-server
- git
- gcc/g++
- curl
- net-tools
- make/cmake
- xutils-dev
- htop

# 2. env-pt.Dockerfile
Set Pytorch development environment
### FROM
- pytorch/pytorch:latest
### apt packages
- git
- curl
- cmake
- tmux
- ffmpeg
- libsm6
- libxext6
### python packages
- torchinfo/torchtext/torchdata/portalocker 
- matplotlib/scipy/pandas/scikit-learn 
- opencv-python/opencv-contrib-python
- nltk/spacy
- ipykernel
- icecream
- wandb

# 3. env-ml.Dockerfile
Set ML development environment
### FROM
- continuumio/miniconda3:latest
### apt packages
- git
- curl
- cmake
- tmux
- ffmpeg
- libsm6
- libxext6
### python packages
- opencv-python/opencv-contrib-python
- matplotlib/scipy/pandas/scikit-learn 
- streamlit/fastapi/uvicorn
- pymongo/selenium 
- icecream
- wandb
