FROM tensorflow/tensorflow:latest-gpu

LABEL description="CUDA enabled Tensorflow enviornment"
LABEL version="1.0"

# Download CUDA toolkit and install it
RUN wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-keyring_1.1-1_all.deb
RUN dpkg -i cuda-keyring_1.1-1_all.deb
RUN apt update && apt upgrade -y
RUN apt -y install cuda-toolkit
RUN apt autoremove && apt clean
RUN apt -y install ncdu
RUN apt autoremove && apt clean

RUN python3 -m pip install --upgrade pip
