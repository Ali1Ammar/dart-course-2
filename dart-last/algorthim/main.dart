import '../shape/circle.dart';
import '../shape/rectangle.dart';
import '../task/input.dart';
import 'base.dart';
import 'max.dart';
import 'search.dart';
import 'shape.dart';

class RunAlgorthim {
  final Algorithm algorithm;

  RunAlgorthim(this.algorithm);
  run() {
    print(algorithm.details());
    algorithm.input();
    print("res: ${algorithm.run()}");
    algorithm.run();
  }
}

void main(List<String> args) {
  final algo = ShapeSize(InputFromUser(), Circle(5));
  final runner = RunAlgorthim(algo);
  runner.run();
}
