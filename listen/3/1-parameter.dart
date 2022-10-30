// complete function (function can call other function , function as value)

import 'dart:io';

// type of parameter
// required parameter
int sum(int x, int y) {
  return x + y;
}

// optional parameter
// int sum2([int x,int y]){  // when we make any parameter optional when must either make it nullable or give it a default value
//   return x+y;
// }
// with nullable
int sum2([int? x, int? y]) {
  x ??= 2; // here default value
  return x + y!;
}

// with default value
int sum3([int x = 1, int y = 2]) {
  return x + y;
}

// with default value and nullable
int sum4([int? x, int y = 2]) {
  return x! + y;
}

// with default value and nullable
int sum5([int? x, int y = 2]) {
  return x! + y;
}

// we could put required parameter and optional parameter together
int sum6(int x, [int y = 2]) {
  // the required must be first
  return x + y;
}

// named parameter , has two type required and optional
// optional named parameter
int sum7({int x = 2, int? y}) {
  // should either be nullable or has default value
  return x + y!;
}

// required named parameter
int sum8({required int x, required int y}) {
  return x + y;
}

//  of course we could use both together
int sum9({required int x, int? y, int a = 2}) {
  return x + y! + a;
}

//  we could combine named parameter with the normal required parameter
int sum10(int b, {required int x, int? y}) {
  return b + x + y!;
}

