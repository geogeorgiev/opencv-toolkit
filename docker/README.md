# docker-opencv
Docker images for running OpenCV 3

## Systems:
- x86_64 based on Ubuntu 16
- armhf based on Raspbian Jessie

## Getting started
Run the build script from the project root dir. It will first download dependencies and then build the docker image. On the command line you can specify as an argument which OS you wish: ubuntu (default) or raspbian. 

E.g.:

    bash scripts/build.sh raspbian


