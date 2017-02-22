#!/bin/bash

if [[ -z $WORKPATH ]]; then
  WORKSPACE=/home/soft/ffmpeg 
fi

if [[ -z $PACKAGES ]]; then
  PACKAGES=/home/setup/ffmpeg 
fi

if [[ -z $dirname ]]; then
   DIRNAME=$(realpath $(dirname $(realpath $0) )/..)
fi

rm -rf $PACKAGES/tspx2wav
cp -a $DIRNAME/tspx2wav $PACKAGES
cd $PACKAGES/tspx2wav
make LIBSPEEX=$WORKSPACE && mv tspx2wav /home/soft/ffmpeg/bin
