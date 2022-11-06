/*
write a program to enter two number from user
and then print the result of divide this two number 
print in this form

enter number 1:
1
enter number 2:
3
1 / 3 = 4

 */

import 'dart:io';

void main() {
  print("enter number 1:");
  final num1 = stdin.readLineSync()!;
  print("enter number 2:");
  final num2 = stdin.readLineSync()!;
  final res = int.parse(num1) / int.parse(num2);
  print("$num1 / $num2 = $res");
}
