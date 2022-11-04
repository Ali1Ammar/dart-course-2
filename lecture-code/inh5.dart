void main(List<String> args) {
  final Person person = Other2();

  person.printName();
}

class Person {
  final String name;

  Person(this.name);
  printName() {
    print(name);
  }

  pay() {
    print("pay");
  }
}

class Other extends Person {
  Other(super.name);
}

class Other2 implements Person {
  @override
  // // TODO: implement name
  // String get name => throw UnimplementedError();
  final String name = "ali";

  @override
  pay() {
    print("ok");
  }

  @override
  printName() {
    print("name from other $name");
  }
}
