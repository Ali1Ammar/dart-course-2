import 'dart:html';

class Person {
  final String name;

  Person(this.name);
}

class Teacher extends Person with PrintIt, Print2 {
  Teacher(super.name);
}

mixin PrintIt {
  String get name;
  printHello() {
    print("hello $name");
  }
}

// class PPP with Print2 {}

mixin Print2 on Person {
  printOk() {
    print("ok $name");
  }
}

void main(List<String> args) {
  final teacher = Teacher("ALi");
  teacher.printHello();
}
