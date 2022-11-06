import '1base.dart';

class Circle implements Shape {
  Circle(
    num x1,
  ) {
    r = x1;
  }

  late num _r;
  num get r => _r;

  void set r(num val) {
    if (val.isNegative) throw "Can not be negative";
    _r = val;
  }

  @override
  num getArea() {
    return r * r;
  }

  @override
  num getPerimeter() {
    return 2 * (r + r);
  }
}
