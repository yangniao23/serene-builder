#!/bin/bash

if [[ $UID == 0 ]]; then
    echo "You must not run this as root." 1>&2
    exit 1
fi

if !(type docker >/dev/null); then
    echo "Docker is not installing on this machine." 1>&2
    exit 1
fi


DIR=$(cd $(dirname $0); pwd)
cd $DIR

sudo docker build -t build_serenebuilder .
sudo docker run -e UGID="${UID}:$(id -u)" -it -v $DIR:/serene-builder-source:ro -v $DIR/out:/out  build_serenebuilder
