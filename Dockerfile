FROM gliderlabs/alpine:3.3

ADD . /src

WORKDIR /src

RUN apk add --update cmake make nodejs swig
RUN npm install -g node-gyp

RUN swig -c++ -javascript -node -DV8_VERSION=0x040300 example.i

RUN g++ -c -fPIC -std=c++11 -I /usr/include/node/ example.cpp example_wrap.cxx

RUN gcc -lc -shared -o libexample.so *.o

RUN node-gyp configure
RUN node-gyp build

RUN node main.js
