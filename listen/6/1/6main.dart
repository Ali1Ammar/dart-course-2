

import '1base.dart';
import '3square.dart';
import '4triangle.dart';
import '5circle.dart';

void main(List<String> args) {
  final Shape shape = Tringle(5,4);

  print(shape.getPerimeter());
  print(shape.getArea());
}