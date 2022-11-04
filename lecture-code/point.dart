import 'dart:math';

void main(List<String> args) {
  final p1 = Point(3, 2);
  // final p2 = Point(5, 4);
  final p3 = Point.zero();
  final p4 = Point.random();
  print(p4);
  print(p3);
  // print(p1.addPoint(p2));
  // print(p1 + p2);
}

class Point {
  final double x;
  final double y;

  Point(this.x, this.y) {
    print("defualt");
  }

  Point.zero({this.x = 0, this.y = 0}) {
    print("zero created");
  }
  // Point.random({this.x = 12, this.y = 40}) {
  //   return Point(4, 2);
  // }

  factory Point.random() {
    print("random");
    return Point(Random().nextDouble(), Random().nextDouble());
  }
  // : x = 0,
  //   y = 0;
// named consturctor
  Point addPoint(Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  @override
  String toString() {
    return "Point($x,$y)";
  }
}
