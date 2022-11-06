/*
write a dart program to let the user enter  5 number and print the multiply of this 5 number
NOTE: use a loop for entering the numbers

the final result may look like this:
please enter 5 number:
3
2
3
1
the multiply of this number is  18
*/

import 'dart:io';

void main(List<String> args) {
  print("please enter 5 number:");
  num res = 1; // 4 , 8 ,  16 , 32
  for (var i = 0; i < 5; i++) {
    final enterNumber = int.parse(stdin.readLineSync()!);
    res *= enterNumber;
  }
  print("the multiply of this number is $res");
}
