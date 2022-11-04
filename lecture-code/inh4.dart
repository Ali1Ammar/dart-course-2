import 'dart:io';

void main(List<String> args) {
  final MathExecuter math;
  final enter = stdin.readLineSync();
  if (enter == "+") {
    math = Adding();
  } else if (enter == "-") {
    math = Subtract();
  } else if (enter == "*") {
    math = Multiply();
  } else {
    throw "please use either + - *";
  }

  math.getDataFromUser();
  print(math.execute());
}

abstract class MathExecuter {
  int x = 0;
  int y = 0;
  int execute();

  getDataFromUser() {
    print("enter two number:");
    x = int.parse(stdin.readLineSync()!);
    y = int.parse(stdin.readLineSync()!);
  }
}

class Adding extends MathExecuter {
  @override
  int execute() {
    return x + y;
  }
}

class Subtract extends MathExecuter {
  // extends mean take all code of Addin
  @override
  int execute() {
    // we overrid the execute from Adding
    return x - y;
  }
}

class Multiply extends MathExecuter {
  // extends mean take all code of Addin
  @override
  int execute() {
    // we overrid the execute from Adding
    return x * y;
  }
}
