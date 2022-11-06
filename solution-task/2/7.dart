/*
resolve exerciuse 5 but use a function to enter a number and convert it into int
 */

import 'dart:io';

void main(List<String> args) {
  print("please enter 5 number:");
  num res = 1;
  for (var i = 0; i < 5; i++) {
    final enterNumber = enterNum();
    res *= enterNumber;
  }
  print("the multiply of this number is $res");
}

num enterNum()=>int.parse(stdin.readLineSync()!);