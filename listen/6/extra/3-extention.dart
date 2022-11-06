import 'dart:svg';

void main(List<String> args) {
  final x = "50";
  print(x.parseInt() is int);
  print(x.parseInt2 is int);
  x.parseInt3 = 50;
  final List<int> a = [];
  a.addTwice(3);
  print([2].get2Length());
  <int>[].addTwice(2);
}

extension ListHelper on List<int> {
  int get2Length() => length * 2;

  addTwice(int x) {
    add(x);
    add(x);
  }
}

extension StringHelper on String {
  int parseInt() => int.parse(this);
  int get parseInt2 => int.parse(this);
  void set parseInt3(int c) {
    print(c);
  }
}

// extension StringHelper on String {
//   int parseInt() => int.parse(this);
// }
