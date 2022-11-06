/*
create any enum you want with any value you want and 
let the user enter a string value of any value from your enum and 
convert that string into a enum type
using code like that may help you :
 Player.values 
 Player.values.byName
 
 */

import 'dart:io';

enum Material { math, arabic, english }

void main(List<String> args) {
  final enter = stdin.readLineSync()!;
  try {
    final enumVal = Material.values.byName(enter);
    print(enumVal);
  } catch (e) {
    print("enter from material values");
  }
}
