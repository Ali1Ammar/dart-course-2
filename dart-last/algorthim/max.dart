import '../task/input.dart';
import 'base.dart';

class MaxNumber implements Algorithm {
  @override
  final BaseInputFromUser inputFromUser;

  MaxNumber(this.inputFromUser);

  @override
  String details() {
    return "find max number from 10 number entered by user";
  }

  List<num>? numbers;
  @override
  void input() {
    print("enter 10 number");
    numbers = inputFromUser.enterListOfNum(3);
  }

  @override
  run() {
    // [ 0 6 8 2]
    if (numbers == null) {
      throw "run input first";
    }
    num max = numbers![0];
    for (var element in numbers!) {
      if (max < element) {
        max = element;
      }
    }
    return max;
  }
}
