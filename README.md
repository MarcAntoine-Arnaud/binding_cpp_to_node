# Node.js can use C++

This source code show who it's possible to call C++ from Node.js.  
The source code will be compiled with GCC/G++, binded with [Swig](http://www.swig.org/).  
Result will be configured and build using [Node-gyp](https://github.com/nodejs/node-gyp) project.

The result can be running using the `node main.js` command.

Enjoy !

# Play with this project
You can compile yourself, but the best way it to use Docker.

* Build your image (optional: can be skipped if you wanna to use the docker hub repository):  
```docker build --tag arnaudmarcantoine/nodejs_app_using_cpp .```

* Run the Docker image:  
```docker run arnaudmarcantoine/nodejs_app_using_cpp```


# Todo List
- [x] Bind C++ code to Node.js
- [x] Configure Docker to build automatically the container
- [ ] Create the CMakefile
- [ ] Create a Web API with Node.js to serve an fonction processed in C++
