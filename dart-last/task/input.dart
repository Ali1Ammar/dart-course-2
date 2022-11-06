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
    List<num> data = [];
    for (var i = 0; i < lengthOfList; i++) {
      data.add(enterNum());
    }
    return data;
  }

  @override
  List<String> enterListOfString(int lengthOfList) {
    List<String> data = [];
    for (var i = 0; i < lengthOfList; i++) {
      data.add(enterString());
    }
    return data;
  }

  @override
  num enterNum() {
    print("enter number");
    return num.parse(enterString());
  }

  @override
  String enterString() {
    return stdin.readLineSync()!;
  }
}
