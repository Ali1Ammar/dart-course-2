/*
write a program to let user enter 5 number into a list 
then print only the odd number 

the final result may look like this:
please enter 5 number:
3
2
3
1
the odd numbers is:
3
1
*/

import 'dart:io';

void main(List<String> args) {
  final odds = []; // 1
  for (var i = 0; i < 5; i++) {
    final enterNumber = int.parse(stdin.readLineSync()!);
    if (enterNumber.isOdd) {
      odds.add(enterNumber);
    }
  }

  print("the odd numbers is:");
  
  // for (var element in odds) {
  //   print(element);
  // }
  odds.forEach(print);

}
