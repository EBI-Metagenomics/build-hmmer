#!/bin/bash

curl http://eddylab.org/software/hmmer/hmmer.tar.gz -o hmmer.tar.gz
tar xzf hmmer.tar.gz
cd hmmer-3.3
./configure
make
cp src/hmmsearch binhouse/hmmsearch_manylinux2010_x86_64
