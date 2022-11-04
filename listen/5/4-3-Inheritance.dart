import 'dart:io';

void main(List<String> args) {
  final add = Adding();
  add.getDataFromUser();
  print(add.execute());

  final sub = Subtract();
  sub.getDataFromUser();
  print(sub.execute());
}

class Adding {
  int x = 0;
  int y = 0;
  int execute() {
    return x + y;
  }

  getDataFromUser() {
    x = int.parse(stdin.readLineSync()!);
    y = int.parse(stdin.readLineSync()!);
  }
}

class Subtract extends Adding {
  // extends mean take all code of Addin
  @override
  int execute() {
    // we overrid the execute from Adding
    return x - y;
  }
}
