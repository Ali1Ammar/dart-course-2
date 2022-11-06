
/*
write a progam that let a user enter it is name and age and then print the name and age
the final execute of the program should be like 

enter your name :
ali
enter you age:
12
your name and age is:
ali
12

 */

import 'dart:io';

void main(List<String> args) {
  print("enter your name :");
  var name = stdin.readLineSync()!;
  print("enter you age:");
  var age = stdin.readLineSync()!;
  final numAge = int.parse(age);
  print("your name and age is:");
  print(name);
  print(numAge);
}