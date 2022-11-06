import '../../../solution-task/5/1.dart';
import '0-base.dart';

class MaxNumber implements Algorithm {
  @override
  final BaseInputFromUser inputFromUser;
  final int numberOfInput;
  MaxNumber(this.inputFromUser, this.numberOfInput);

  @override
  String details() {
    return "enter $numberOfInput number from user into array and then get the max number";
  }

  List<num>? number;

  @override
  void input() {
    print("enter $numberOfInput number now:");
    number = inputFromUser.enterListOfNum(numberOfInput);
  }

  @override
  num run() {
    if (number == null) throw "please run input first";
    final x =
        number!.reduce((value, element) => value > element ? value : element);
    return x;
  }
}
