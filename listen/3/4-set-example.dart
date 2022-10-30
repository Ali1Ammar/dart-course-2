import 'dart:io';

void main(List<String> args) {
  // a program to let the use toggle (check,uncheck) using a set
  final Set set = {};
  final name = [for (int x = 0; x < 10; x++) "$x"];

  while (true) {
    print("enter value to toggle");
    final input = stdin.readLineSync();
    if(input=="exit") break;
    if (set.contains(input)) {
      set.remove(input);
    } else {
      set.add(input);
    }

    for (var element in name) {
      print("$element ${set.contains(element)}");
    }
  }
}
