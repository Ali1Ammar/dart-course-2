import '1base.dart';
import '2rectangle.dart';

class Square2 extends Rectangle {
  Square2(num x) : super(x, x);
}

class Square implements Shape {
  Square(
    num x1,
  ) {
    x = x1;
  }

  late num _x;
  num get x => _x;

  void set x(num val) {
    if (val.isNegative) throw "Can not be negative";
    _x = val;
  }

  @override
  num getArea() {
    return x * x;
  }

  @override
  num getPerimeter() {
    return 2 * (x + x);
  }
}
