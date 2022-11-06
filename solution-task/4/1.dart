/*
create any enum you want with any value you want and 
let the user enter a string value of any value from your enum and 
convert that string into a enum type

using code like that may help you :
 Player.values 
 Player.values.byName
 
 */


import 'dart:io';

enum P {a,b,c,d}

void main(List<String> args) {
  print("enter one of this");
  for (var element in P.values) {
      print(element.name);
  }
  final input = stdin.readLineSync()!;
  final p = P.values.byName(input);
}