#!/bin/sh

rm *.o *.so example_wrap.cxx

rm -Rf build/*

npm install -g node-gyp

swig -c++ -javascript -node -DV8_VERSION=0x040300 example.i

g++ -c -fPIC -std=c++11 -I /usr/include/node/ example.cpp example_wrap.cxx

gcc -lc -shared -o libexample.so *.o

node-gyp configure
node-gyp build

node main.js
