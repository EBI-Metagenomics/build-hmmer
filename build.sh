#!/bin/bash

DIR=hmmer-3.3

curl http://eddylab.org/software/hmmer/hmmer.tar.gz -o hmmer.tar.gz
tar xzf hmmer.tar.gz
cd $DIR
./configure
make
cd ..
cp $DIR/src/hmmsearch binhouse/hmmsearch
rm -rf $DIR
ls
