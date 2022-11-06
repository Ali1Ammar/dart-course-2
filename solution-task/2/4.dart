/*
write a dart program to enter two number than enter a math operator
and then perform this operator and print the result
the program should at least support (+,-,/,*)
NOTE: use num.parse() and switch or if else statement

the final result may look like this :

enter first number:
5
enter second number:
2
enter operator: 
+
result is : 7


enter first number:
10
enter second number:
2
enter operator: 
/
result is : 5

 */

import 'dart:io';

void main(List<String> args) {
  print("enter first number:");
  final num1 = int.parse(stdin.readLineSync()!);//5
  print("enter second number:");
  final num2 = int.parse(stdin.readLineSync()!); // 2
  print("enter operator:");
  final op = stdin.readLineSync()!; // +
  num result;
  if (op == "+") {
    result=num1 + num2;
  } else if (op == "-") {
    result=num1 - num2;
  } else if (op == "/") {
    result=num1 / num2;
  } else if (op == "*") {
    result=num1 * num2;
  } else  {
    result=0;
    // throw UnsupportedError("unsupported") ;
  }
  print("result is $result");
}
