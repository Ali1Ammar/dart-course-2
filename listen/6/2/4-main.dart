import '../../../solution-task/5/1.dart';
import '../1/3square.dart';
import '../1/5circle.dart';
import '0-base.dart';
import '1-max.dart';
import '2-search.dart';
import '3-area.dart';
// import '2-search.dart';
// import '3-area.dart';

// use genetic
void main(List<String> args) {
  final inputter = InputFromUser();
  // final algo = RunAlgorithm(MaxNumber(inputter, 10));
  // final algo2 = RunAlgorithm(AreaCalculator(inputter, Circle(5)));
  final algo3 = RunAlgorithm(SearchWord(inputter, 3));

  algo3.run();
}

class RunAlgorithm {
  final Algorithm algorithm;

  RunAlgorithm(this.algorithm);

  run() {
    print(algorithm.details());
    algorithm.input();
    print(algorithm.run());
  }
}
