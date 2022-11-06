import '1base.dart';

class Rectangle implements Shape {
  Rectangle(num x1, num y1) {
    x = x1;
    y = y1;
  }

  // int get a =>3; 
  

  late num _x;
  late num _y;
  num get x => _x;
  num get y => _y;

  void set x(num val) {
    if (val.isNegative) throw "Can not be negative";
    _x = val;
  }

  void set y(num val) {
    if (val.isNegative) throw "Can not be negative";
    _y = val;
  }

  @override
  num getArea() {
    return x * y;
  }

  @override
  num getPerimeter() {
    return 2 * (x + y);
  }
}

void main(List<String> args) {
  final rect = Rectangle(4, 5);
  rect.x = -5;
}
