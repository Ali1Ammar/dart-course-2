import '1base.dart';

class Tringle implements Shape {
  Tringle(num x1, num y1) {
    b = x1;
    h = y1;
  }

  late num _b;
  late num _h;
  num get b => _b;
  num get h => _h;

  void set b(num val) {
    if (val.isNegative) throw "Can not be negative";
    _b = val;
  }

  void set h(num val) {
    if (val.isNegative) throw "Can not be negative";
    _h = val;
  }

  @override
  num getArea() {
    return h * b;
  }

  @override
  num getPerimeter() {
    return 2 * (h + b);
  }
}
