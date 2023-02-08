# Installation guide by Danis Valitov
# 1. Installation of ORB-SLAM 3 on orange pi 4 focal
Install all dependencies.
```shell

sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt update

sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev

sudo apt-get install libglew-dev libboost-all-dev libssl-dev

sudo apt-get install g++  autotools-dev libicu-dev libbz2-dev

sudo apt-get install libeigen3-dev libsuitesparse-dev qtdeclarative5-dev qt5-qmake libboost-dev

```
---

### Install OpenCV 3.4.1
```shell
cd ~
mkdir Dev && cd Dev
git clone https://github.com/opencv/opencv.git
cd opencv
git checkout 3.4.1
```
```shell
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D WITH_CUDA=OFF -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j3
sudo make install
```
---

### Pangolin 0.7
```shell
cd ~/Dev
wget https://github.com/stevenlovegrove/Pangolin/archive/refs/tags/v0.7.zip
unzip v0.7.zip 
rm  v0.7.zip 
cd Pangolin-0.7
mkdir build
cd build
cmake .. -D CMAKE_BUILD_TYPE=Release 
make -j3 
sudo make install
```
