# env for pytorch dev
FROM pytorch/pytorch:latest

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
    ipykernel \
    opencv-python \
    opencv-contrib-python \
    icecream \
    wandb \
    matplotlib \
    scipy \
    pandas \
    scikit-learn 

# NLP
RUN pip install \
    nltk \
    spacy \
    torchinfo \
    torchtext \
    torchdata \
    portalocker 

CMD ["tmux"]

# docker command
# docker build -t env-pt -f env-pt.Dockerfile .
