import '../../../solution-task/5/1.dart';
import '../1/1base.dart';
import '0-base.dart';

class AreaCalculator implements Algorithm {
  @override
  final BaseInputFromUser inputFromUser;
  final Shape shape;
  AreaCalculator(
    this.inputFromUser,
    this.shape,
  );

  @override
  String details() {
    return "enter a size of one person then print how many could fit in a given shape";
  }

  num? sizeOfOne;

  @override
  void input() {
    print("enter size now:");
    sizeOfOne = inputFromUser.enterNum(); // 2
  }

  @override
  num run() {
    if (sizeOfOne == null) throw "please run input first";
    return shape.getArea() / sizeOfOne!;
  }
}
