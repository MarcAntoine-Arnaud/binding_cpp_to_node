var example = require("./build/Release/example.node");

/* Call our add() function */

x = 42;
y = 105;
g = example.add(x,y);
console.log("SUM of x and y is=" + g);
