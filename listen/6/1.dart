/*
Shapes
write a dart classes to represent square, circle, triangle and rectangle
use oop to add this method into each shape created 
getArea and getPerimeter 
make sure the any value of it can not be negative
 */

import 'dart:math';

abstract class Shape {
  double getArea();
  double getPerimeter();
}

class Rectangle implements Shape {
  late double _x;
  late double _y;
  Rectangle(double x, double y) {
    this.x = x;
    this.y = y;
  }
  double get x => _x;
  double get y => _y;
  void set x(double v) {
    if (v.isNegative) throw NegativeNumberException();
    _x = x;
  }

  void set y(double v) {
    if (v.isNegative) throw NegativeNumberException();
    _y = v;
  }

  @override
  double getArea() {
    return x * y;
  }

  @override
  double getPerimeter() {
    return 2 * (x + y);
  }
}

class Square extends Rectangle {
  Square(double x) : super(x, x);
}

class Cycle implements Shape {
  late double _r;
  Cycle(double r) {
    this.r = r;
  }
  double get r => _r;
  void set r(double v) {
    if (v.isNegative) throw NegativeNumberException();
    _r = r;
  }

  @override
  double getArea() {
    return pi * r * r;
  }

  @override
  double getPerimeter() {
    return 2 * pi * r;
  }
}

class Triangle implements Shape {
  late double _h;
  late double _b;
  Triangle(double h, double b) {
    this.h = h;
    this.b = b;
  }
  double get h => _h;
  double get b => _b;
  void set h(double v) {
    if (v.isNegative) throw NegativeNumberException();
    _h = v;
  }

  void set b(double v) {
    if (v.isNegative) throw NegativeNumberException();
    _b = v;
  }

  @override
  double getArea() {
    return 1 / 2 * h * b;
  }

  @override
  double getPerimeter() {
    return b + h;
  }
}

class NegativeNumberException implements Exception {
  @override
  String toString() {
    return "NegativeNumberException: this field can not be negative";
  }
}
