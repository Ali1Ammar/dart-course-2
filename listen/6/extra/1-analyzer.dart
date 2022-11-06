import 'dart:math';

void main(List<String> args) {
  // print(Random().nextInt(5));
  // analyzer
  String? str;
  if (Random().nextBool()) {
    str = "ss";
  }
  print(str?.length);
  print(str!.length);
}
