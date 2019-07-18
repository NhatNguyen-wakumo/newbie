# 16.07.2019
## Function Definition
### Function Declaration
```
function functionName(parameters) {
// code to be executed
}
```
_**For example:**_
```
function myFunction(a, b) {
return a * b;
}
```
### Function Expressions
```
var x = function (a, b) {return a * b};
```
_**For example:**_
```
var x = function (a, b) {return a * b};
var z = x(4, 3);
```
### Self-Invoking Functions
```
(function () {
var x = "Hello!!"; 
})();
```
## Function Parameters and Arguments
### Parameter Rules
_JavaScript function definitions do not specify data types for parameters._
_JavaScript functions do not perform type checking on the passed arguments._
_JavaScript functions do not check the number of arguments received._
### Parameter Defaults
_If a function is called with **missing arguments** (less than declared), the missing values are set to: **undefined**
Sometimes this is acceptable, but sometimes it is better to assign a default value to the parameter:_
```
function myFunction(x, y) {
if (y === undefined) {
y = 0;
} 
}
```
### The Arguments Object
_JavaScript functions have a built-in object called the arguments object._
_The argument object contains an array of the arguments used when the function was called (invoked)._
_**Example:**_
```
x = findMax(1, 123, 500, 115, 44, 88);

function findMax() {
var i;
var max = -Infinity;
for (i = 0; i < arguments.length; i++) {
if (arguments[i] > max) {
max = arguments[i];
}
}
return max;
}
```
### Arguments are Passed by Value
_The parameters, in a function call, are the function's arguments.
JavaScript arguments are passed by **value**: The function only gets to know the values, not the argument's locations.
If a function changes an argument's value, it does not change the parameter's original value.
**Changes to arguments are not visible (reflected) outside the function.**_
### Objects are Passed by Reference
_In JavaScript, object references are values._
_objects will behave like they are passed by reference:_
_If a function changes an object property, it changes the original value.
**Changes to object properties are visible (reflected) outside the function.**_

