#!/bin/bash

DISTRO=${1:-ubuntu}
[ ! -d sources ] && mkdir sources
cd sources
[ ! -f opencv.zip ] && wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.1.0.zip
[ ! -f opencv_contrib.zip ] && wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.1.0.zip
[ ! -d opencv-3.1.0 ] && unzip opencv.zip
[ ! -d opencv_contrib-3.1.0 ] && unzip opencv_contrib.zip
cd ..
docker build -f Dockerfile-${DISTRO} -t gooshan/opencv .