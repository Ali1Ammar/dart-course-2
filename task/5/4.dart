/*
create a class named InputFromUser that implements BaseInputFromUser class below
 used to input a values from the user with the following functions
1- num enterNumber()
2- Stirng enterString()
3- List<String> enterListOfString(int lengthOfList)
4- List<num> enterListOfNumber(int lengthOfList)
 */

import 'dart:io';

abstract class BaseInputFromUser {
  num enterNum();
  String enterString();
  List<String> enterListOfString(int lengthOfList);
  List<num> enterListOfNum(int lengthOfList);
}

class InputFromUser implements BaseInputFromUser {
  @override
  List<num> enterListOfNum(int lengthOfList) {
    final res = <num>[];
    for (var i = 0; i < lengthOfList; i++) {
      res.add(enterNum());
    }
    return res;
  }

  @override
  List<String> enterListOfString(int lengthOfList) {
    final res = <String>[];
    for (var i = 0; i < lengthOfList; i++) {
      res.add(enterString());
    }
    return res;
  }

  @override
  num enterNum() {
    return int.parse(enterString());
  }

  @override
  String enterString() {
    return stdin.readLineSync()!;
  }
}
