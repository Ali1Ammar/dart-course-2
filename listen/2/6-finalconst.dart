import 'dart:io';

void main(List<String> args) {
  // we now var is used to define a variable
  var x;
  var t = 5;
  // when we use var we could change the value of the variable
  x = 5;
  x = t;
  t = x;

  // there are other way to define a variable that it is value can not be change
  // this is called constant
  // we could use final or const to define constant
  final pi = 3.14;
  pi = 2; // error here

  const g = 9.8;
  g = 10; // error here

  // there are two type of constant
  // compile time constant ( when we now it is value before start the program)
  // it is value must be assigned at compile time
  // we use const to define it
  const pi2 = 3.14; // we now pi is 3.14
  const pi3 = 3 + 0.14; // we now pi is 3+0.14
  var num = 4;
  const pi4 = 3 +
      num; // error here as num is stored in memory and we don't know its value at compile time

  // runtime constant (when we are execute the program , used the program)
  // it is value could be assigned at run time
    // we use final to define it
  final ok = 5;
  final hi = stdin.readLineSync(); // we could use function with final
  const hi2 = stdin.readLineSync(); // but we can not with const

  final pi5 = 3 + num; // we could perform operation on other variable
}
