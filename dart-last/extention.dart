import 'dart:io';

void main(List<String> args) {
  final x = stdin.readLineSync()!;
  final number = int.parse(x);
  x.parseInt();
  final number2 = x.parseInt();
  parseInt(x);
  x.asInt;
}

int parseInt(String x) => int.parse(x);

extension StringHelper on String {
  int parseInt() {
    return int.parse(this);
  }

  int get asInt {
    return int.parse(this);
  }
}
