import '../../../solution-task/5/1.dart';
import '0-base.dart';

class SearchWord implements Algorithm {
  @override
  final BaseInputFromUser inputFromUser;
  final int numberOfInput;
  SearchWord(this.inputFromUser, this.numberOfInput);

  @override
  String details() {
    return "enter $numberOfInput string from user and then search for a word that also entered from user";
  }

  List<String>? words;
  String? word;

  @override
  void input() {
    print("enter the $numberOfInput string now:");
    words = inputFromUser.enterListOfString(numberOfInput);
    print("enter word to search for:");
    word = inputFromUser.enterString();
  }

  @override
  String run() {
    if (word == null || words == null) throw "please run input first";
    return words!.where((element) => element == word).first;
  }
}
