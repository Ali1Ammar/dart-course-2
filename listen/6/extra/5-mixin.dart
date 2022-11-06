import 'dart:io';

void main(List<String> args) {
  final x = Point(3, 2);
  x.inputString();
  x.printEnter();
}

mixin TakeInput {
  String inputString() {
    return stdin.readLineSync()!;
  }

  num inputNumber() {
    return num.parse(inputString());
  }

  String msg = "enter number please";

  printMsg();
}

mixin PrintMessege {
  String inputString() {
    print("PrintMessege");
    return stdin.readLineSync()!;
  }

  printEnter() {
    print("enter number please");
  }
}

mixin PointHelper on Point {
  printPoint() {
    print("Point($x,$y)");
  }
}

class Point with TakeInput, PrintMessege {
  final int x;
  final int y;
  Point(this.x, this.y);

  @override
  printMsg() {
    inputNumber();
    print("ok");
  }
}

class SpecialPoint extends Point with PointHelper {
  SpecialPoint(super.x, super.y);
}
