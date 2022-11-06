import 'dart:io';

abstract class BaseInputFromUser {
  num enterNum();
  String enterString();
  List<String> enterListOfString(int lengthOfList);
  List<num> enterListOfNum(int lengthOfList);
}

class InputFromUser implements BaseInputFromUser {
  num enterNum() {
    return int.parse(enterString());
  }

  String enterString() {
    return stdin.readLineSync()!;
  }

  List<String> enterListOfString(int lengthOfList) {
    List<String> list = [];
    for (var i = 0; i < lengthOfList; i++) {
      list.add(enterString());
    }
    return list;
  }

  List<num> enterListOfNum(int lengthOfList) {
    return enterListOfString(lengthOfList).map((e) => int.parse(e)).toList();
  }
}
