import 'circle.dart';
import 'rectangle.dart';
import 'square.dart';

void main(List<String> args) {
  final x = Rectangle(5, 10);
  print(x.getArea());
  final y = Square(5);
  print(y.getArea());

  final z = Circle(5);
  z.r = -5;
  print(z.getArea());
}
