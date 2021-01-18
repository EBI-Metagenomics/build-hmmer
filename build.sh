#!/bin/bash

DIR=hmmer-3.3.2

curl http://eddylab.org/software/hmmer/hmmer.tar.gz -o hmmer.tar.gz
sha256sum --check hmmer.tar.gz.sha256

tar xzf hmmer.tar.gz
cd $DIR
./configure
make
cd ..
cp $DIR/src/hmmsearch binhouse/hmmsearch
cp $DIR/src/hmmscan binhouse/hmmscan
cp $DIR/src/hmmpress binhouse/hmmpress
cp $DIR/src/hmmfetch binhouse/hmmfetch
cp $DIR/src/hmmemit binhouse/hmmemit
cp $DIR/src/phmmer binhouse/phmmer
rm -rf $DIR
ls
