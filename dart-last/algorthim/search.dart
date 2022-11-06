import '../task/input.dart';
import 'base.dart';

class Search implements Algorithm {
  @override
  final BaseInputFromUser inputFromUser;

  Search(this.inputFromUser);

  @override
  String details() {
    return "find name Ali from 10 entered name by user";
  }

  List<String>? names;
  @override
  void input() {
    print("enter 10 names");
    names = inputFromUser.enterListOfString(3);
  }

  @override
  run() {
    if (names == null) {
      throw "run input first";
    }
    return names!.contains("Ali");
  }
}
