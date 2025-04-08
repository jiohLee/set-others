# env for data-engineering course
FROM continuumio/miniconda3:latest

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /root

# common
RUN sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
    git \
    curl \
    cmake \
    tmux \
    ffmpeg \
    libsm6 \
    libxext6

RUN pip install \
    opencv-python \
    opencv-contrib-python \
    icecream \
    wandb \
    matplotlib \
    scipy \
    pandas \
    scikit-learn 

# web dev
RUN pip install \
    streamlit \
    fastapi \
    uvicorn \
    pymongo \
    selenium 

# # recommender
# RUN conda install -c conda-forge scikit-surprise -y


CMD [ "tmux" ]

# docker command
# docker build -t env-ml -f env-ml.Dockerfile .
