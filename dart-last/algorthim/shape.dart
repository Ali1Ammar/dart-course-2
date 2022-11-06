import '../shape/base.dart';
import '../task/input.dart';
import 'base.dart';

class ShapeSize implements Algorithm {
  final BaseInputFromUser inputFromUser;
  final Shape shape;
  ShapeSize(this.inputFromUser, this.shape);
  @override
  String details() {
    return "number of box in a given shape";
  }

  num? areaOfBox;
  @override
  void input() {
    print("enter area of box");
    areaOfBox = inputFromUser.enterNum();
  }

  @override
  run() {
    if (areaOfBox == null) {
      throw "run input first";
    }
    final shapeArea = shape.getArea();
    return shapeArea / areaOfBox!;
  }
}
