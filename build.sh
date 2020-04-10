#!/bin/bash

if [[ $UID != 0 ]]; then
    echo "You have to run this as root." 1>&2
    exit 1
fi

if !(type docker >/dev/null); then
    echo "Docker is not installing on this machine." 1>&2
    exit 1
fi


DIR=$(cd $(dirname $0); pwd)
cd $DIR

docker build -t build_serenebuilder .
cd ../
docker run -it -v $DIR/out:/out  build_serenebuilder
