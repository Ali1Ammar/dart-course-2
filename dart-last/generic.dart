import 'dart:math';

// closures , Lexical
void main(List<String> args) {
  final addTwo = createAdder(2);
  print(addTwo(10));
  print(addTwo(50));
  print(addTwo(14));
}

int Function(int) createAdder(int addNumber) {
  int random = Random().nextInt(100);
  print(random);
  return (int addTo) {
    return addTo + addNumber + random;
  };
}
