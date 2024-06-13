FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

ENV PROJECT_DIR="/ORB_SLAM3/"

RUN apt-get update \
	&& apt-get install -y \
	build-essential \ 
	cmake \
	git \
	libavcodec-dev \ 
	libavformat-dev \
	libboost-all-dev \
	libgl1-mesa-dev \
	libglew-dev \
	libgtk2.0-dev \
	libeigen3-dev \
	libssl-dev \
	libswscale-dev \
	libopencv-dev \
    pkg-config

# Build Pangolin for visualization
RUN git clone https://github.com/stevenlovegrove/Pangolin.git \
	&& cd Pangolin \
	&& git checkout 9d8fef7 \
	&& mkdir build \
	&& cd build \
	&& cmake .. -D CMAKE_BUILD_TYPE=Release \
	&& make -j 4 \
	&& make install

COPY . $PROJECT_DIR

RUN cd $PROJECT_DIR \
	&& ./build.sh \
	&& ldconfig
