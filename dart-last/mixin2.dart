import 'dart:io';

class Point {
  final int x;
  final int y;

  Point(this.x, this.y);

  // print , printMsg
}

class Point2 extends Point with PointPrint, PointPrintMsg {
  Point2(super.x, super.y);
}

mixin PointPrint on Point {
  printPoint() {
    print("$x,$y");
  }
}

mixin PointPrintMsg on Point {
  printMsg() {
    print("Please enter x , y");
  }
}

void main(List<String> args) {
  final p = Point2(4, 3);
  p.printPoint();
  p.printMsg();
}
