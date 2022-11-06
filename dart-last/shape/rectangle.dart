import 'base.dart';

// using get,set and private
class Rectangle implements Shape {
  late double _x;
  late double _y;
  double get x => _x;
  void set x(double value) {
    if (value.isNegative) {
      throw "x can not be Negative";
    }
    _x = value;
  }

  double get y => _y;
  void set y(double value) {
    if (value.isNegative) {
      throw "y can not be Negative";
    }
    _y = value;
  }

  Rectangle(double x, double y) {
    this.x = x;
    this.y = y;
  }

  @override
  num getArea() => x * y;

  @override
  num getPerimeter() => 2 * (x + y);
}
