// function is a way to organize our code and reuse same code more than one time

// to define a function we first write the return type (output value of the function) if we do not have output we write void
// then we write a name for the function
// then we write ()
// we put the parameter of the function (input value of the function) inside side ()
//the we write {}
// we put our code inside {}

/*

void main(List<String> args) {
  print("hello");
}

void is the return type here (function doesn't return anything)
main is the name of this function
List<String> args is a parameter of this function (we write it like we write a variable)
print("hello"); is our code
if the function name is main that mean our code will start work from this function
*/

import 'dart:io';

int add(int x, int y) {
  return x + y;
}
/*
int is the return type here (function return the result of x+y)
add is the name of this function
int x, int y is a parameter of this function
return x+y; is our code
we use return keyword to return a value(output) from a function 
 */

void main(List<String> args) {
  add(1,
      2); // we call the function(start execute it is code) using () and pass the value of the parameter inside its
  var x = add(5,
      6); // we call the same function as much as we want (each will have its x,y and return value)
  print(add(6, x));

  print(enterNumber());
}

// let create a function to enter a int from user
int enterNumber() {
  var str = stdin.readLineSync()!;
  return int.parse(str);
}
