import 'dart:math';

import 'base.dart';

class Circle implements Shape {
  late double _r;
  double get r => _r;
  void set r(double value) {
    if (value.isNegative) {
      throw "r can not be Negative";
    }
    _r = value;
  }

  Circle(double r) {
    this.r = r;
  }

  @override
  num getArea() {
    return r * r * pi;
  }

  @override
  num getPerimeter() {
    return 2 * r * pi;
  }
}
